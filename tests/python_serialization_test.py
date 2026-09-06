import unittest
import sys
import os
from google.protobuf.timestamp_pb2 import Timestamp

# Add python source path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'python')))

import sensor_messages.sensor_messages_pb2 as pb


class TestSensorMessagesSerialization(unittest.TestCase):

    def test_continuous_signal_batch_roundtrip(self):
        timestamp = Timestamp()
        timestamp.seconds = 1700000000
        timestamp.nanos = 500000000

        metadata = pb.DeviceMetadata(
            device_id="POLAR_H10_PY",
            patient_id="PAT_456",
            session_id="SESS_789",
            hardware_model="H10",
            firmware_version="2.1.0",
            battery_percent=92,
            sensor_location="chest"
        )

        signal_batch = pb.ContinuousSignalBatch(
            start_timestamp=timestamp,
            start_offset_sec=0.0,
            sampling_rate_hz=250.0,
            modality=pb.SENSOR_MODALITY_ECG,
            unit=pb.PHYSICAL_UNIT_MILLIVOLTS,
            channel_name="ECG_LEAD_II",
            samples=[0.12, 0.45, 0.88, 1.20, -0.30],
            missing_mask=[False, False, False, False, False],
            metadata=metadata
        )

        container = pb.SensorDataContainer(
            metadata=metadata,
            packet_timestamp=timestamp,
            raw_signal=signal_batch
        )

        # Serialize
        serialized = container.SerializeToString()
        self.assertGreater(len(serialized), 0)

        # Deserialize
        decoded = pb.SensorDataContainer()
        decoded.ParseFromString(serialized)

        self.assertEqual(decoded.metadata.device_id, "POLAR_H10_PY")
        self.assertEqual(decoded.raw_signal.sampling_rate_hz, 250.0)
        self.assertEqual(list(decoded.raw_signal.samples), [0.12, 0.45, 0.88, 1.20, -0.30])
        self.assertEqual(decoded.raw_signal.modality, pb.SENSOR_MODALITY_ECG)

    def test_multimodal_feature_vector_roundtrip(self):
        metadata = pb.DeviceMetadata(device_id="LAMINA_PY_01", patient_id="PAT_001")
        
        feature_vector = pb.MultimodalFeatureVector(
            window=pb.FeatureWindow(start_time_sec=0.0, end_time_sec=60.0, duration_sec=60.0),
            cardiac=pb.CardiacFeatures(
                mean_hr_bpm=74.2,
                sdnn_ms=48.5,
                rmssd_ms=42.1,
                pnn50=18.2,
                beat_count=74
            ),
            eda=pb.EdaFeatures(
                mean_tonic_us=3.12,
                mean_phasic_us=0.15,
                scr_count=6,
                scr_rate_per_min=6.0
            ),
            respiration=pb.RespirationFeatures(
                mean_rate_bpm=15.0,
                cycle_count=15
            ),
            coupling=pb.CouplingFeatures(
                rsa_amplitude_bpm=7.2,
                cardiac_respiratory_concentration=0.85
            ),
            quality=pb.FeatureQuality(
                coverage=1.0,
                cardiac_valid=True,
                eda_valid=True,
                respiration_valid=True,
                coupling_valid=True,
                usable_feature_count=20,
                total_feature_count=20
            ),
            metadata=metadata
        )

        container = pb.SensorDataContainer(
            metadata=metadata,
            feature_vector=feature_vector
        )

        serialized = container.SerializeToString()
        decoded = pb.SensorDataContainer()
        decoded.ParseFromString(serialized)

        self.assertEqual(decoded.feature_vector.cardiac.mean_hr_bpm, 74.2)
        self.assertEqual(decoded.feature_vector.cardiac.sdnn_ms, 48.5)
        self.assertEqual(decoded.feature_vector.eda.scr_count, 6)
        self.assertEqual(decoded.feature_vector.coupling.rsa_amplitude_bpm, 7.2)
        self.assertTrue(decoded.feature_vector.quality.cardiac_valid)

    def test_autonomic_state_roundtrip(self):
        autonomic_state = pb.AutonomicState(
            timestamp_sec=120.0,
            duration_sec=60.0,
            cardiac=pb.CardiacState(variability_index=0.40, heart_rate_index=-0.10, beat_count=70),
            electrodermal=pb.ElectrodermalState(tonic_level_index=0.60, scr_count=4),
            respiratory=pb.RespiratoryState(rate_index=-0.05, cycle_count=14),
            coupling=pb.CouplingState(resphr_coupling_index=0.78, association_count=2),
            activation_score=0.30,
            regulation_score=0.75,
            confidence=pb.StateConfidence(overall=0.96, cardiac=1.0, electrodermal=0.9)
        )

        container = pb.SensorDataContainer(autonomic_state=autonomic_state)

        serialized = container.SerializeToString()
        decoded = pb.SensorDataContainer()
        decoded.ParseFromString(serialized)

        self.assertAlmostEqual(decoded.autonomic_state.activation_score, 0.30)
        self.assertAlmostEqual(decoded.autonomic_state.regulation_score, 0.75)
        self.assertEqual(decoded.autonomic_state.cardiac.beat_count, 70)


if __name__ == '__main__':
    unittest.main()
