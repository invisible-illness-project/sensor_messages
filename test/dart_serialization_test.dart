import 'package:test/test.dart';
import 'package:fixnum/fixnum.dart';
import 'package:sensor_messages/sensor_messages.dart';

void main() {
  group('Sensor Messages Dart Protobuf Tests', () {
    test('ContinuousSignalBatch roundtrip', () {
      final metadata = DeviceMetadata()
        ..deviceId = 'POLAR_H10_DART'
        ..patientId = 'PAT_789'
        ..sessionId = 'SESS_DART'
        ..hardwareModel = 'H10'
        ..firmwareVersion = '2.1.0'
        ..batteryPercent = 94
        ..sensorLocation = 'chest';

      final signalBatch = ContinuousSignalBatch()
        ..startOffsetSec = 0.0
        ..samplingRateHz = 250.0
        ..modality = SensorModality.SENSOR_MODALITY_ECG
        ..unit = PhysicalUnit.PHYSICAL_UNIT_MILLIVOLTS
        ..channelName = 'ECG_LEAD_II'
        ..samples.addAll([0.12, 0.45, 0.88, 1.20, -0.30])
        ..metadata = metadata;

      final container = SensorDataContainer()
        ..metadata = metadata
        ..rawSignal = signalBatch;

      // Serialize
      final bytes = container.writeToBuffer();
      expect(bytes.length, greaterThan(0));

      // Deserialize
      final decoded = SensorDataContainer.fromBuffer(bytes);
      expect(decoded.metadata.deviceId, equals('POLAR_H10_DART'));
      expect(decoded.rawSignal.samplingRateHz, equals(250.0));
      expect(decoded.rawSignal.samples, equals([0.12, 0.45, 0.88, 1.20, -0.30]));
      expect(decoded.rawSignal.modality, equals(SensorModality.SENSOR_MODALITY_ECG));
    });

    test('MultimodalFeatureVector roundtrip', () {
      final window = FeatureWindow()
        ..startTimeSec = 0.0
        ..endTimeSec = 60.0
        ..durationSec = 60.0;

      final cardiac = CardiacFeatures()
        ..meanHrBpm = 75.4
        ..sdnnMs = 46.2
        ..rmssdMs = 40.1
        ..pnn50 = 16.5
        ..beatCount = Int64(75);

      final eda = EdaFeatures()
        ..meanTonicUs = 2.8
        ..meanPhasicUs = 0.12
        ..scrCount = Int64(5)
        ..scrRatePerMin = 5.0;

      final respiration = RespirationFeatures()
        ..meanRateBpm = 14.5
        ..cycleCount = Int64(14);

      final coupling = CouplingFeatures()
        ..rsaAmplitudeBpm = 6.8
        ..cardiacRespiratoryConcentration = 0.81;

      final quality = FeatureQuality()
        ..coverage = 1.0
        ..cardiacValid = true
        ..edaValid = true
        ..respirationValid = true
        ..couplingValid = true
        ..usableFeatureCount = Int64(24)
        ..totalFeatureCount = Int64(24);

      final featureVector = MultimodalFeatureVector()
        ..window = window
        ..cardiac = cardiac
        ..eda = eda
        ..respiration = respiration
        ..coupling = coupling
        ..quality = quality;

      final container = SensorDataContainer()
        ..featureVector = featureVector;

      final bytes = container.writeToBuffer();
      final decoded = SensorDataContainer.fromBuffer(bytes);

      expect(decoded.featureVector.cardiac.meanHrBpm, equals(75.4));
      expect(decoded.featureVector.cardiac.sdnnMs, equals(46.2));
      expect(decoded.featureVector.eda.scrCount.toInt(), equals(5));
      expect(decoded.featureVector.coupling.rsaAmplitudeBpm, equals(6.8));
      expect(decoded.featureVector.quality.cardiacValid, isTrue);
    });

    test('AutonomicState roundtrip', () {
      final cardiac = CardiacState()
        ..variabilityIndex = 0.38
        ..heartRateIndex = -0.12
        ..beatCount = Int64(71);

      final electrodermal = ElectrodermalState()
        ..tonicLevelIndex = 0.58
        ..scrCount = Int64(4);

      final respiratory = RespiratoryState()
        ..rateIndex = -0.08
        ..cycleCount = Int64(14);

      final coupling = CouplingState()
        ..resphrCouplingIndex = 0.76
        ..associationCount = Int64(3);

      final confidence = StateConfidence()
        ..overall = 0.94
        ..cardiac = 1.0
        ..electrodermal = 0.9;

      final autonomicState = AutonomicState()
        ..timestampSec = 120.0
        ..durationSec = 60.0
        ..cardiac = cardiac
        ..electrodermal = electrodermal
        ..respiratory = respiratory
        ..coupling = coupling
        ..activationScore = 0.28
        ..regulationScore = 0.74
        ..confidence = confidence;

      final container = SensorDataContainer()
        ..autonomicState = autonomicState;

      final bytes = container.writeToBuffer();
      final decoded = SensorDataContainer.fromBuffer(bytes);

      expect(decoded.autonomicState.activationScore, closeTo(0.28, 1e-5));
      expect(decoded.autonomicState.regulationScore, closeTo(0.74, 1e-5));
      expect(decoded.autonomicState.cardiac.beatCount.toInt(), equals(71));
    });
  });
}
