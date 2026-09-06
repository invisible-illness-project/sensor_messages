use sensor_messages::*;
use prost::Message;

#[test]
fn test_continuous_signal_batch_roundtrip() {
    let raw_samples = vec![0.123, 0.456, 0.789, 1.011, -0.543];
    let signal_batch = ContinuousSignalBatch {
        start_timestamp: Some(prost_types::Timestamp {
            seconds: 1700000000,
            nanos: 500000000,
        }),
        start_offset_sec: 0.0,
        sampling_rate_hz: 250.0,
        modality: SensorModality::Ecg as i32,
        unit: PhysicalUnit::Millivolts as i32,
        channel_name: "ECG_LEAD_II".to_string(),
        samples: raw_samples.clone(),
        missing_mask: vec![false, false, false, false, false],
        filter_applied: Some(FilterSpec {
            kind: FilterKind::Bandpass as i32,
            sampling_rate_hz: 250.0,
            cutoffs_hz: vec![0.5, 45.0],
            order: 4,
        }),
        metadata: Some(DeviceMetadata {
            device_id: "POLAR_H10_001".to_string(),
            patient_id: "PATIENT_123".to_string(),
            session_id: "SESS_456".to_string(),
            hardware_model: "H10".to_string(),
            firmware_version: "2.1.0".to_string(),
            battery_percent: 95,
            sensor_location: "chest_lead_ii".to_string(),
        }),
    };

    let container = SensorDataContainer {
        metadata: signal_batch.metadata.clone(),
        packet_timestamp: signal_batch.start_timestamp.clone(),
        payload: Some(sensor_data_container::Payload::RawSignal(signal_batch)),
    };

    let mut buf = Vec::new();
    container.encode(&mut buf).expect("Encode failed");

    let decoded = SensorDataContainer::decode(&buf[..]).expect("Decode failed");
    assert_eq!(container, decoded);

    if let Some(sensor_data_container::Payload::RawSignal(decoded_signal)) = decoded.payload {
        assert_eq!(decoded_signal.samples, raw_samples);
        assert_eq!(decoded_signal.sampling_rate_hz, 250.0);
        assert_eq!(decoded_signal.modality, SensorModality::Ecg as i32);
    } else {
        panic!("Expected RawSignal payload");
    }
}

#[test]
fn test_lamina_events_roundtrip() {
    let scr_batch = ScrEventBatch {
        events: vec![ScrEvent {
            onset_index: 100,
            onset_time_sec: 2.0,
            peak_index: 150,
            peak_time_sec: 3.0,
            amplitude_us: 0.85,
            rise_time_sec: 1.25,
        }],
        sampling_rate_hz: 50.0,
        offset_sec: 0.0,
        metadata: Some(DeviceMetadata {
            device_id: "EMPATICA_E4".to_string(),
            patient_id: "PATIENT_999".to_string(),
            session_id: "".to_string(),
            hardware_model: "".to_string(),
            firmware_version: "".to_string(),
            battery_percent: 88,
            sensor_location: "wrist".to_string(),
        }),
    };

    let rsp_batch = RespirationCycleBatch {
        cycles: vec![RespirationCycle {
            inspiration_index: 200,
            inspiration_time_sec: 4.0,
            expiration_index: 350,
            expiration_time_sec: 7.0,
            duration_sec: 3.0,
            amplitude: 1.5,
            is_valid: true,
        }],
        sampling_rate_hz: 50.0,
        offset_sec: 0.0,
        metadata: None,
    };

    let container_scr = SensorDataContainer {
        metadata: scr_batch.metadata.clone(),
        packet_timestamp: None,
        payload: Some(sensor_data_container::Payload::ScrEvents(scr_batch)),
    };

    let mut buf = Vec::new();
    container_scr.encode(&mut buf).unwrap();
    let decoded_scr = SensorDataContainer::decode(&buf[..]).unwrap();
    assert_eq!(container_scr, decoded_scr);

    let container_rsp = SensorDataContainer {
        metadata: None,
        packet_timestamp: None,
        payload: Some(sensor_data_container::Payload::RespirationCycles(rsp_batch)),
    };

    let mut buf2 = Vec::new();
    container_rsp.encode(&mut buf2).unwrap();
    let decoded_rsp = SensorDataContainer::decode(&buf2[..]).unwrap();
    assert_eq!(container_rsp, decoded_rsp);
}

#[test]
fn test_lamina_multimodal_feature_vector_roundtrip() {
    let lamina_vec = lamina::features::MultimodalFeatureVector {
        window: lamina::features::window::FeatureWindow {
            start_time_sec: 0.0,
            end_time_sec: 60.0,
            duration_sec: 60.0,
        },
        cardiac: lamina::features::cardiac::CardiacFeatures {
            mean_hr_bpm: Some(72.5),
            median_hr_bpm: Some(71.8),
            sdnn_ms: Some(45.2),
            rmssd_ms: Some(38.6),
            pnn50: Some(15.4),
            rr_mean_ms: Some(827.5),
            rr_std_ms: Some(45.2),
            beat_count: 72,
        },
        eda: lamina::features::eda::EdaFeatures {
            mean_tonic_us: Some(2.4),
            median_tonic_us: Some(2.35),
            tonic_std_us: Some(0.12),
            mean_phasic_us: Some(0.08),
            phasic_std_us: Some(0.04),
            scr_count: 5,
            scr_rate_per_min: Some(5.0),
            mean_scr_amplitude_us: Some(0.35),
            median_scr_amplitude_us: Some(0.32),
            mean_scr_rise_time_sec: Some(1.1),
        },
        respiration: lamina::features::respiration::RespirationFeatures {
            mean_rate_bpm: Some(14.2),
            median_rate_bpm: Some(14.0),
            rate_std_bpm: Some(1.1),
            mean_cycle_duration_sec: Some(4.22),
            cycle_count: 14,
            mean_amplitude: Some(1.2),
            amplitude_std: Some(0.15),
        },
        coupling: lamina::features::coupling::CouplingFeatures {
            rsa_amplitude_bpm: Some(6.5),
            rsa_amplitude_rr_sec: Some(0.075),
            cardiac_respiratory_concentration: Some(0.82),
            cardiac_respiratory_mean_phase: Some(0.45),
            mean_pulse_delay_sec: Some(0.245),
            pulse_delay_std_sec: Some(0.012),
            scr_cardiac_association_count: 4,
        },
        quality: lamina::features::quality::FeatureQuality {
            coverage: 1.0,
            modality_coverage: lamina::features::quality::FeatureCoverage {
                overall: 1.0,
                ecg: Some(1.0),
                ppg: Some(1.0),
                eda: Some(1.0),
                rsp: Some(1.0),
            },
            cardiac_valid: true,
            eda_valid: true,
            respiration_valid: true,
            coupling_valid: true,
            usable_feature_count: 28,
            total_feature_count: 28,
            issues: vec![],
        },
    };

    // Convert Lamina MultimodalFeatureVector to Protobuf MultimodalFeatureVector
    let proto_feature_vector = MultimodalFeatureVector {
        window: Some(FeatureWindow {
            start_time_sec: lamina_vec.window.start_time_sec,
            end_time_sec: lamina_vec.window.end_time_sec,
            duration_sec: lamina_vec.window.duration_sec,
        }),
        cardiac: Some(CardiacFeatures {
            mean_hr_bpm: lamina_vec.cardiac.mean_hr_bpm,
            median_hr_bpm: lamina_vec.cardiac.median_hr_bpm,
            sdnn_ms: lamina_vec.cardiac.sdnn_ms,
            rmssd_ms: lamina_vec.cardiac.rmssd_ms,
            pnn50: lamina_vec.cardiac.pnn50,
            rr_mean_ms: lamina_vec.cardiac.rr_mean_ms,
            rr_std_ms: lamina_vec.cardiac.rr_std_ms,
            beat_count: lamina_vec.cardiac.beat_count as u64,
        }),
        eda: Some(EdaFeatures {
            mean_tonic_us: lamina_vec.eda.mean_tonic_us,
            median_tonic_us: lamina_vec.eda.median_tonic_us,
            tonic_std_us: lamina_vec.eda.tonic_std_us,
            mean_phasic_us: lamina_vec.eda.mean_phasic_us,
            phasic_std_us: lamina_vec.eda.phasic_std_us,
            scr_count: lamina_vec.eda.scr_count as u64,
            scr_rate_per_min: lamina_vec.eda.scr_rate_per_min,
            mean_scr_amplitude_us: lamina_vec.eda.mean_scr_amplitude_us,
            median_scr_amplitude_us: lamina_vec.eda.median_scr_amplitude_us,
            mean_scr_rise_time_sec: lamina_vec.eda.mean_scr_rise_time_sec,
        }),
        respiration: Some(RespirationFeatures {
            mean_rate_bpm: lamina_vec.respiration.mean_rate_bpm,
            median_rate_bpm: lamina_vec.respiration.median_rate_bpm,
            rate_std_bpm: lamina_vec.respiration.rate_std_bpm,
            mean_cycle_duration_sec: lamina_vec.respiration.mean_cycle_duration_sec,
            cycle_count: lamina_vec.respiration.cycle_count as u64,
            mean_amplitude: lamina_vec.respiration.mean_amplitude,
            amplitude_std: lamina_vec.respiration.amplitude_std,
        }),
        coupling: Some(CouplingFeatures {
            rsa_amplitude_bpm: lamina_vec.coupling.rsa_amplitude_bpm,
            rsa_amplitude_rr_sec: lamina_vec.coupling.rsa_amplitude_rr_sec,
            cardiac_respiratory_concentration: lamina_vec.coupling.cardiac_respiratory_concentration,
            cardiac_respiratory_mean_phase: lamina_vec.coupling.cardiac_respiratory_mean_phase,
            mean_pulse_delay_sec: lamina_vec.coupling.mean_pulse_delay_sec,
            pulse_delay_std_sec: lamina_vec.coupling.pulse_delay_std_sec,
            scr_cardiac_association_count: lamina_vec.coupling.scr_cardiac_association_count as u64,
        }),
        quality: Some(FeatureQuality {
            coverage: lamina_vec.quality.coverage,
            modality_coverage: Some(FeatureCoverage {
                overall: lamina_vec.quality.modality_coverage.overall,
                ecg: lamina_vec.quality.modality_coverage.ecg,
                ppg: lamina_vec.quality.modality_coverage.ppg,
                eda: lamina_vec.quality.modality_coverage.eda,
                rsp: lamina_vec.quality.modality_coverage.rsp,
            }),
            cardiac_valid: lamina_vec.quality.cardiac_valid,
            eda_valid: lamina_vec.quality.eda_valid,
            respiration_valid: lamina_vec.quality.respiration_valid,
            coupling_valid: lamina_vec.quality.coupling_valid,
            usable_feature_count: lamina_vec.quality.usable_feature_count as u64,
            total_feature_count: lamina_vec.quality.total_feature_count as u64,
            issues: vec![],
        }),
        metadata: Some(DeviceMetadata {
            device_id: "MULTI_SENSOR_01".to_string(),
            patient_id: "SUBJ_42".to_string(),
            session_id: "SESS_001".to_string(),
            hardware_model: "VIBE_CHIP_V1".to_string(),
            firmware_version: "1.0.0".to_string(),
            battery_percent: 100,
            sensor_location: "chest".to_string(),
        }),
    };

    let container = SensorDataContainer {
        metadata: proto_feature_vector.metadata.clone(),
        packet_timestamp: Some(prost_types::Timestamp { seconds: 1700000060, nanos: 0 }),
        payload: Some(sensor_data_container::Payload::FeatureVector(proto_feature_vector)),
    };

    let mut buf = Vec::new();
    container.encode(&mut buf).expect("FeatureVector encode failed");
    let decoded = SensorDataContainer::decode(&buf[..]).expect("FeatureVector decode failed");
    assert_eq!(container, decoded);
}

#[test]
fn test_lamina_autonomic_state_roundtrip() {
    let lamina_state = lamina::autonomic::state::AutonomicState {
        timestamp: 120.0,
        duration_sec: 60.0,
        cardiac: lamina::autonomic::state::CardiacState {
            variability_index: Some(0.35),
            heart_rate_index: Some(-0.15),
            recovery_evidence: Some(0.42),
            beat_count: 70,
        },
        electrodermal: lamina::autonomic::state::ElectrodermalState {
            tonic_level_index: Some(0.65),
            phasic_activation_index: Some(0.20),
            scr_rate_index: Some(0.10),
            scr_count: 4,
        },
        respiratory: lamina::autonomic::state::RespiratoryState {
            rate_index: Some(-0.10),
            amplitude_index: Some(0.30),
            regularity_index: Some(0.80),
            cycle_count: 15,
        },
        coupling: lamina::autonomic::state::CouplingState {
            resphr_coupling_index: Some(0.75),
            phase_coupling_index: Some(0.68),
            pulse_delay_index: Some(0.12),
            association_count: 3,
        },
        activation_score: Some(0.25),
        regulation_score: Some(0.72),
        confidence: lamina::autonomic::confidence::StateConfidence {
            overall: Some(0.95),
            cardiac: Some(1.0),
            electrodermal: Some(0.9),
            respiratory: Some(1.0),
            coupling: Some(0.9),
        },
    };

    let proto_autonomic = AutonomicState {
        timestamp_sec: lamina_state.timestamp,
        duration_sec: lamina_state.duration_sec,
        cardiac: Some(CardiacState {
            variability_index: lamina_state.cardiac.variability_index,
            heart_rate_index: lamina_state.cardiac.heart_rate_index,
            recovery_evidence: lamina_state.cardiac.recovery_evidence,
            beat_count: lamina_state.cardiac.beat_count as u64,
        }),
        electrodermal: Some(ElectrodermalState {
            tonic_level_index: lamina_state.electrodermal.tonic_level_index,
            phasic_activation_index: lamina_state.electrodermal.phasic_activation_index,
            scr_rate_index: lamina_state.electrodermal.scr_rate_index,
            scr_count: lamina_state.electrodermal.scr_count as u64,
        }),
        respiratory: Some(RespiratoryState {
            rate_index: lamina_state.respiratory.rate_index,
            amplitude_index: lamina_state.respiratory.amplitude_index,
            regularity_index: lamina_state.respiratory.regularity_index,
            cycle_count: lamina_state.respiratory.cycle_count as u64,
        }),
        coupling: Some(CouplingState {
            resphr_coupling_index: lamina_state.coupling.resphr_coupling_index,
            phase_coupling_index: lamina_state.coupling.phase_coupling_index,
            pulse_delay_index: lamina_state.coupling.pulse_delay_index,
            association_count: lamina_state.coupling.association_count as u64,
        }),
        activation_score: lamina_state.activation_score,
        regulation_score: lamina_state.regulation_score,
        confidence: Some(StateConfidence {
            overall: lamina_state.confidence.overall.unwrap_or(0.0),
            cardiac: lamina_state.confidence.cardiac,
            electrodermal: lamina_state.confidence.electrodermal,
            respiratory: lamina_state.confidence.respiratory,
            coupling: lamina_state.confidence.coupling,
        }),
        metadata: Some(DeviceMetadata {
            device_id: "LAMINA_ESTIMATOR_01".to_string(),
            patient_id: "PATIENT_X".to_string(),
            session_id: "SESS_TEST".to_string(),
            hardware_model: "".to_string(),
            firmware_version: "".to_string(),
            battery_percent: 100,
            sensor_location: "".to_string(),
        }),
    };

    let container = SensorDataContainer {
        metadata: proto_autonomic.metadata.clone(),
        packet_timestamp: Some(prost_types::Timestamp { seconds: 1700000120, nanos: 0 }),
        payload: Some(sensor_data_container::Payload::AutonomicState(proto_autonomic)),
    };

    let mut buf = Vec::new();
    container.encode(&mut buf).expect("AutonomicState encode failed");
    let decoded = SensorDataContainer::decode(&buf[..]).expect("AutonomicState decode failed");
    assert_eq!(container, decoded);
}
