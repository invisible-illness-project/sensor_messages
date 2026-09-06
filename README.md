# Invisible Illness Project Sensor Messages (`invisible_illness.sensor.v1`) 📡

`sensor_messages` defines the canonical, language-neutral Protocol Buffer transport contract for the Invisible Illness Project biomedical sensor-processing stack.

**Lamina** (`lamina`) is the computational source of truth for signal processing, feature extraction, cardiorespiratory coupling, and autonomic state estimation. `sensor_messages` provides the cross-language transport contract for serializing and exchanging these data structures across:

* **Rust**: Core sensor management (`sensor-manager`), high-throughput stream ingestion, and real-time processing.
* **Dart / Mobile**: On-device real-time sensor processing, physiological feature rendering, and mobile application state.
* **Python / Web**: Scientific analysis, validation, machine learning pipelines, and analytical dashboards.

---

## 🛠️ Key Commands & Workflow

### 1. Generate All Bindings & Run All Validation Tests
To regenerate Protobuf bindings and run unit tests for Rust, Python, and Dart in a single command:

```bash
./generate_bindings.sh
```

---

### 2. Rust (Cargo / Prost)
Rust bindings are compiled automatically via `prost-build` inside `build.rs`.

* **Build crate & compile proto**:
  ```bash
  cargo check
  ```
* **Run Rust serialization tests**:
  ```bash
  cargo test
  ```

#### Rust Usage Example:
```rust
use sensor_messages::*;
use prost::Message;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let container = SensorDataContainer {
        metadata: Some(DeviceMetadata {
            device_id: "POLAR_H10_001".to_string(),
            patient_id: "PATIENT_123".to_string(),
            ..Default::default()
        }),
        packet_timestamp: Some(prost_types::Timestamp { seconds: 1700000000, nanos: 0 }),
        payload: Some(sensor_data_container::Payload::RawSignal(ContinuousSignalBatch {
            sampling_rate_hz: 250.0,
            modality: SensorModality::Ecg as i32,
            unit: PhysicalUnit::Millivolts as i32,
            samples: vec![0.12, 0.45, 0.88, 1.20, -0.30],
            ..Default::default()
        })),
    };

    // Serialize to bytes
    let mut buf = Vec::new();
    container.encode(&mut buf)?;

    // Deserialize from bytes
    let decoded = SensorDataContainer::decode(&buf[..])?;
    println!("Decoded device: {:?}", decoded.metadata);
    Ok(())
}
```

---

### 3. Python (`google.protobuf`)

* **Generate Python bindings**:
  ```bash
  mkdir -p python/sensor_messages
  protoc --proto_path=. --python_out=python/sensor_messages sensor-messages.proto
  ```
* **Run Python tests**:
  ```bash
  python3 -m unittest discover -s tests -p "*_test.py"
  ```

#### Python Usage Example:
```python
import sensor_messages.sensor_messages_pb2 as pb

container = pb.SensorDataContainer(
    metadata=pb.DeviceMetadata(device_id="EMPATICA_E4", patient_id="PAT_456"),
    autonomic_state=pb.AutonomicState(
        timestamp_sec=120.0,
        duration_sec=60.0,
        activation_score=0.30,
        regulation_score=0.75
    )
)

# Serialize to string/bytes
serialized = container.SerializeToString()

# Deserialize from bytes
decoded = pb.SensorDataContainer()
decoded.ParseFromString(serialized)
print(f"Activation Score: {decoded.autonomic_state.activation_score}")
```

---

### 4. Dart / Flutter (`protoc_plugin`)

* **Install Dart dependencies**:
  ```bash
  dart pub get
  ```
* **Generate Dart bindings**:
  ```bash
  mkdir -p lib/src/generated
  protoc --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart \
         --proto_path=. \
         --dart_out=lib/src/generated \
         sensor-messages.proto
  ```
* **Run Dart tests**:
  ```bash
  dart test
  ```

#### Dart Usage Example:
```dart
import 'package:sensor_messages/sensor_messages.dart';
import 'package:fixnum/fixnum.dart';

void main() {
  final container = SensorDataContainer()
    ..metadata = (DeviceMetadata()
      ..deviceId = 'POLAR_H10_DART'
      ..patientId = 'PAT_789')
    ..featureVector = (MultimodalFeatureVector()
      ..cardiac = (CardiacFeatures()
        ..meanHrBpm = 74.5
        ..sdnnMs = 45.2
        ..beatCount = Int64(72)));

  // Serialize to byte buffer
  final bytes = container.writeToBuffer();

  // Deserialize from byte buffer
  final decoded = SensorDataContainer.fromBuffer(bytes);
  print('Mean HR: ${decoded.featureVector.cardiac.meanHrBpm}');
}
```

---

## 📊 Package Architecture & Message Summary

The schema (`invisible_illness.sensor.v1`) is structured into seven logical sections:

1. **Metadata & Enumerations**: `DeviceMetadata`, `SensorModality`, `PhysicalUnit`, `FilterSpec`.
2. **Continuous Signals & Raw Streams**: `ContinuousSignalBatch`, `MultiChannelSignalBatch`, `SinglePointMeasurement`, `BloodPressureMeasurement`.
3. **Lamina Event Detections**: `CardiacPeakEvent`, `ScrEvent`, `RespirationCycle`, `PulseTimingResult`, `RsaResult`.
4. **Lamina Windowed Features**: `FeatureWindow`, `CardiacFeatures`, `EdaFeatures`, `RespirationFeatures`, `CouplingFeatures`, `FeatureQuality`, `MultimodalFeatureVector`.
5. **Lamina Autonomic State Estimates**: `CardiacState`, `ElectrodermalState`, `RespiratoryState`, `CouplingState`, `StateConfidence`, `AutonomicState`.
6. **Remote Photoplethysmography (rPPG)**: `Roi`, `VideoMetadata`, `RppgSegmentQuality`, `RppgQualitySummary`, `RppgSegment`, `RppgSignal`.
7. **Transport Envelope**: `SensorDataContainer` wrapping metadata header and payload `oneof`.

---

## 📚 Technical Documentation

For an in-depth analysis of scientific data model mappings, timestamp semantics, breaking changes, and cross-language considerations, refer to [ARCHITECTURE_REPORT.md](ARCHITECTURE_REPORT.md).
