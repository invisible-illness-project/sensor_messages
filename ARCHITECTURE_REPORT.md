# Roeh Health Sensor Processing Architecture & Protobuf Contract Report (`roeh.sensor.v1`)

**Author:** Staff Systems / Software Engineer  
**Repository:** `sensor_messages` (`/home/eddiem3/development/roeh-health/sensor_messages`)  
**Branch:** `support-lamina-upgrade`  
**Date:** September 6, 2026  

---

## Executive Summary

This report documents the architectural upgrade of the `sensor_messages` protocol buffer schema to serve as the definitive, language-neutral transport contract across the Roeh Health sensor processing stack. **Lamina** is established as the computational source of truth for signal processing and physiological feature extraction across three primary target environments:

1. **Rust**: Core sensor management (`sensor-manager`), high-throughput stream ingestion, and real-time processing.
2. **Dart / Mobile**: On-device real-time sensor processing, physiological feature rendering, and client application state.
3. **Python / Web**: Scientific analysis, validation, machine learning, and high-level analytical dashboards.

The updated schema (`roeh.sensor.v1`) replaces the legacy schema with a production-grade, strongly-typed representation capable of transporting raw sensor data, extracted event detections, windowed multimodal feature vectors, autonomic state evidence, and optical remote photoplethysmography (rPPG) substrates.

---

## 1. Analysis of Existing Schema & Architectural Deficiencies

Inspection of the legacy `sensor-messages.proto` revealed severe architectural limitations and scientific data integrity risks:

### Identified Deficiencies:
1. **Timestamp Precision Quantization**:
   - Timestamps were declared as single-precision `float` values (e.g. `float timestamp = 1;`). Single-precision IEEE 754 floating point numbers have only 24 bits of mantissa (~7 decimal digits of precision).
   - A Unix epoch timestamp in milliseconds requires 13 decimal digits, while microsecond precision requires 16 digits. Transporting absolute timestamps as `float` causes severe quantization errors (up to tens of seconds of clock jitter/aliasing), corrupting high-frequency physiological signal analysis.
2. **Redundant Field Duplication**:
   - Every single packet (`HRVPacket`, `EDAPacket`, `ECGPacket`, `AccelerometerPacket`) individually duplicated `string device_id` and `string patient_id` fields, adding unnecessary serialization overhead and lacking structured metadata (e.g. session IDs, hardware models, sensor locations, battery levels).
3. **Rigid Monolithic Payload Structure**:
   - All packets were packed flatly into a single `SensorDataContainer` `oneof` without clear distinction between raw sensor streams, peak detections, derived features, and machine learning outputs.
4. **Missing Scientific Provenance & Quality Metadata**:
   - Signal packets lacked sampling rate metadata, physical units, channel identifiers, digital filter provenance (`FilterSpec`), window coverage ratios, missing sample masks, and rule-based feature quality assessments.
5. **Naming Inconsistencies & Typos**:
   - Legacy schema contained naming typos (e.g. `HearRatePacket` instead of `HeartRatePacket`) and inconsistent timestamp conventions (`uint64` in `EDAWaveformPacket` vs `float` elsewhere).

### Deprecation Policy Decision:
Per engineering directives, legacy deprecated field tags were **not** retained. Given the early stage of system deployment, clean production-level `v1` messages were implemented directly to eliminate technical debt and enforce immediate convergence across client and server teams.

---

## 2. Lamina Data Model Mapping

The updated protobuf schema was derived by mapping Lamina's core Rust data structures (`lamina::signal`, `lamina::ecg`, `lamina::ppg`, `lamina::eda`, `lamina::rsp`, `lamina::multimodal`, `lamina::features`, `lamina::autonomic`, `lamina::rppg`) directly into language-neutral protobuf messages.

| Lamina Concept / Rust Type | Protobuf Representation (`roeh.sensor.v1`) | Semantic Notes |
| :--- | :--- | :--- |
| `lamina::features::TimedSignal` | `ContinuousSignalBatch` | 1D continuous array, `start_offset_sec`, `sampling_rate_hz`, missing value mask, filter spec |
| Multi-axis Accel / Gyro / PPG | `MultiChannelSignalBatch` | Multi-channel matrix `repeated DoubleArray`, synchronized sampling rate, channel names/units |
| Filter Spec / SOS Biquads | `FilterSpec` | Kind (`LOWPASS`, `HIGHPASS`, `BANDPASS`, `NOTCH`), cutoffs (Hz), filter order, sampling rate |
| ECG / PPG Peak Detection | `CardiacPeakBatch` / `CardiacPeakEvent` | Peak index, timestamp sec, peak amplitude (mV/intensity), modality (`ECG`/`PPG`) |
| `lamina::eda::ScrEvent` | `ScrEventBatch` / `ScrEvent` | Onset index/time, peak index/time, amplitude ($\mu\text{S}$), rise time (sec) |
| `lamina::rsp::RespirationCycle` | `RespirationCycleBatch` / `RespirationCycle` | Inspiration index/time, expiration index/time, cycle duration (sec), amplitude, validity flag |
| `lamina::multimodal::ecg_ppg::PulseTimingResult` | `PulseTimingBatch` / `PulseTimingResult` | ECG R-peak time, PPG peak time, pulse delay / arrival time (sec) |
| `lamina::multimodal::rsa::RsaResult` | `RsaBatch` / `RsaResult` | Beat timestamp, RSA amplitude ($\text{BPM}$), RSA amplitude ($\text{RR}_{\text{sec}}$) |
| `lamina::features::window::FeatureWindow` | `FeatureWindow` | `start_time_sec`, `end_time_sec`, `duration_sec` |
| `lamina::features::cardiac::CardiacFeatures` | `CardiacFeatures` | `mean_hr_bpm`, `median_hr_bpm`, `sdnn_ms`, `rmssd_ms`, `pnn50`, `rr_mean_ms`, `rr_std_ms`, `beat_count` |
| `lamina::features::eda::EdaFeatures` | `EdaFeatures` | `mean_tonic_us`, `tonic_std_us`, `mean_phasic_us`, `scr_count`, `scr_rate_per_min`, `mean_scr_amplitude_us`, `mean_scr_rise_time_sec` |
| `lamina::features::respiration::RespirationFeatures` | `RespirationFeatures` | `mean_rate_bpm`, `rate_std_bpm`, `mean_cycle_duration_sec`, `cycle_count`, `mean_amplitude` |
| `lamina::features::coupling::CouplingFeatures` | `CouplingFeatures` | `rsa_amplitude_bpm`, `cardiac_respiratory_concentration`, `cardiac_respiratory_mean_phase`, `mean_pulse_delay_sec`, `scr_cardiac_association_count` |
| `lamina::features::quality::FeatureQuality` | `FeatureQuality` / `FeatureCoverage` | `coverage`, modality coverage breakdown, validity flags (`cardiac_valid`, etc.), `issues` enum list |
| `lamina::features::MultimodalFeatureVector` | `MultimodalFeatureVector` | Unified windowed payload containing window, cardiac, eda, respiration, coupling, quality, metadata |
| `lamina::autonomic::state::AutonomicState` | `AutonomicState` | `CardiacState`, `ElectrodermalState`, `RespiratoryState`, `CouplingState`, `activation_score`, `regulation_score`, `StateConfidence` |
| `lamina::rppg::signal::RppgSignal` | `RppgSignal` | Pulse samples, valid segments (`RppgSegment`), recording quality summary (`RppgQualitySummary`) |

---

## 3. Timestamp & Sampling Semantics

To prevent timestamp ambiguity and quantization error:

1. **Absolute Epoch Reference**: Physical packet timestamps use `google.protobuf.Timestamp` (64-bit UTC seconds and 32-bit nanoseconds).
2. **Relative Monotonic Timing**: Continuous signal arrays and event series use double-precision floating point offsets (`double start_offset_sec`, `double timestamp_sec`).
3. **Monotonic Sample Mapping Formula**:
   $$\text{timestamp\_sec}(n) = \text{start\_offset\_sec} + \frac{n}{F_s}$$
   where $n$ is the 0-indexed sample index and $F_s$ is `sampling_rate_hz` ($F_s > 0$).
4. **Irregular Sample Masking**: Signal batches include `repeated bool missing_mask` to explicitly mark interpolated or dropped hardware samples without corrupting downstream signal processing filters.

---

## 4. Sensor/Device Identity & Transport Envelope Model

Instead of repeating device strings inside every payload, all packets are wrapped in a unified transport container:

```protobuf
message SensorDataContainer {
  DeviceMetadata metadata = 1;
  google.protobuf.Timestamp packet_timestamp = 2;

  oneof payload {
    ContinuousSignalBatch raw_signal = 10;
    MultiChannelSignalBatch multi_channel_signal = 11;
    SinglePointMeasurement single_measurement = 12;
    BloodPressureMeasurement blood_pressure = 13;
    CardiacPeakBatch cardiac_peaks = 14;
    ScrEventBatch scr_events = 15;
    RespirationCycleBatch respiration_cycles = 16;
    PulseTimingBatch pulse_timings = 17;
    RsaBatch rsa_results = 18;
    MultimodalFeatureVector feature_vector = 19;
    AutonomicState autonomic_state = 20;
    RppgSignal rppg_signal = 21;
  }
}
```

---

## 5. Compatibility Matrix

| Capability | Rust (`sensor_messages`) | Dart (`sensor_messages`) | Python (`sensor_messages`) | TimescaleDB (`sensor-manager`) |
| :--- | :--- | :--- | :--- | :--- |
| **Raw Signals** | `ContinuousSignalBatch` | `ContinuousSignalBatch` | `ContinuousSignalBatch` | Hypertable `ecg_samples` / `eda_samples` |
| **Multi-Channel Data** | `MultiChannelSignalBatch` | `MultiChannelSignalBatch` | `MultiChannelSignalBatch` | Multi-column hypertable `accelerometer_data` |
| **Sampling Metadata** | `sampling_rate_hz` (`f64`) | `sampling_rate_hz` (`double`) | `sampling_rate_hz` (`float`) | `sample_rate` (`INTEGER`) |
| **High-Precision Timestamps** | `google.protobuf.Timestamp` | `Timestamp` | `Timestamp` | `timestamp` (`BIGINT` ms epoch) |
| **Signal Quality** | `FeatureQuality` / `QualitySummary` | `FeatureQuality` | `FeatureQuality` | `status` (`TEXT`) |
| **Derived Metrics** | `CardiacFeatures` / `EdaFeatures` | `CardiacFeatures` | `CardiacFeatures` | `hrv_data` / `respiration_data` |
| **Events / Peaks** | `CardiacPeakBatch` / `ScrBatch` | `CardiacPeakBatch` | `CardiacPeakBatch` | Peak index tables |
| **Processing Metadata** | `FilterSpec` | `FilterSpec` | `FilterSpec` | Audit metadata tables |
| **Autonomic States** | `AutonomicState` | `AutonomicState` | `AutonomicState` | Analytics hypertables |

---

## 6. Breaking Changes Report

| Change | Type | Rationale |
| :--- | :--- | :--- |
| **Replaced `float timestamp` with `google.protobuf.Timestamp` & `double timestamp_sec`** | Breaking | `float` causes severe timestamp quantization jitter (>10s error over long streams). |
| **Removed legacy packets (`HRVPacket`, `EDAPacket`, `HearRatePacket`)** | Breaking | Replaced by strongly-typed `v1` continuous batches, feature vectors, and autonomic states matching Lamina. Corrected typo `HearRatePacket`. |
| **Moved `device_id` / `patient_id` to `DeviceMetadata` header** | Breaking | Eliminates payload duplication and standardizes session/hardware metadata envelope. |
| **Standardized `sample_rate` to `sampling_rate_hz` (`double`)** | Breaking | Clarifies frequency unit (Hz) and provides necessary precision for non-integer sampling rates (e.g. 59.94 Hz rPPG video). |

---

## 7. Validation Report

Compilation, code generation, and round-trip serialization tests were executed across all target languages via `./generate_bindings.sh`.

### Test Suite Execution Summary:

1. **Protobuf Schema Validation**:
   - `protoc --proto_path=. --descriptor_set_out=/dev/null sensor-messages.proto`
   - **Result**: Clean compilation, 0 warnings.

2. **Rust Bindings & Serialization Tests**:
   - Tooling: `cargo test` (`prost` v0.13.5, `prost-types` v0.13.5)
   - Executed: `rust_serialization_test.rs` (4 test cases)
     - `test_continuous_signal_batch_roundtrip`: **PASSED**
     - `test_lamina_events_roundtrip`: **PASSED**
     - `test_lamina_multimodal_feature_vector_roundtrip`: **PASSED**
     - `test_lamina_autonomic_state_roundtrip`: **PASSED**
   - **Result**: `test result: ok. 4 passed; 0 failed; 0 ignored.`

3. **Python Bindings & Serialization Tests**:
   - Tooling: `python3 -m unittest` (`protobuf` v6.33.6)
   - Executed: `python_serialization_test.py` (3 test cases)
     - `test_continuous_signal_batch_roundtrip`: **PASSED**
     - `test_multimodal_feature_vector_roundtrip`: **PASSED**
     - `test_autonomic_state_roundtrip`: **PASSED**
   - **Result**: `Ran 3 tests in 0.000s. OK.`

4. **Dart Bindings & Serialization Tests**:
   - Tooling: `dart test` (`protoc_plugin` v25.0.0, `protobuf` v6.0.0, `fixnum` v1.1.1)
   - Executed: `dart_serialization_test.dart` (3 test cases)
     - `ContinuousSignalBatch roundtrip`: **PASSED**
     - `MultimodalFeatureVector roundtrip`: **PASSED**
     - `AutonomicState roundtrip`: **PASSED**
   - **Result**: `All tests passed!`

---

## 8. Migration & Integration Instructions

1. **For Rust Developers (`lamina` & `sensor-manager`)**:
   Add `sensor_messages` as a dependency in `Cargo.toml`:
   ```toml
   [dependencies]
   sensor_messages = { path = "../sensor_messages" }
   ```
2. **For Mobile Developers (Dart / Flutter)**:
   Include `sensor_messages` in `pubspec.yaml`:
   ```yaml
   dependencies:
     sensor_messages:
       path: ../sensor_messages
   ```
3. **For Python / Scientific Analysis**:
   Install or include `sensor_messages` in `PYTHONPATH`:
   ```bash
   pip install -e /home/eddiem3/development/roeh-health/sensor_messages
   ```
4. **Re-generating Bindings**:
   Run the master generation script after updating `.proto` files:
   ```bash
   ./generate_bindings.sh
   ```
