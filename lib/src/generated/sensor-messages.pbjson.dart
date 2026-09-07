// This is a generated file - do not edit.
//
// Generated from sensor-messages.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sensorModalityDescriptor instead')
const SensorModality$json = {
  '1': 'SensorModality',
  '2': [
    {'1': 'SENSOR_MODALITY_UNSPECIFIED', '2': 0},
    {'1': 'SENSOR_MODALITY_ECG', '2': 1},
    {'1': 'SENSOR_MODALITY_PPG', '2': 2},
    {'1': 'SENSOR_MODALITY_EDA', '2': 3},
    {'1': 'SENSOR_MODALITY_RSP', '2': 4},
    {'1': 'SENSOR_MODALITY_ACCELEROMETER', '2': 5},
    {'1': 'SENSOR_MODALITY_GYROSCOPE', '2': 6},
    {'1': 'SENSOR_MODALITY_TEMPERATURE', '2': 7},
    {'1': 'SENSOR_MODALITY_BLOOD_PRESSURE', '2': 8},
    {'1': 'SENSOR_MODALITY_BVP', '2': 9},
    {'1': 'SENSOR_MODALITY_EMG', '2': 10},
    {'1': 'SENSOR_MODALITY_RPPG', '2': 11},
  ],
};

/// Descriptor for `SensorModality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sensorModalityDescriptor = $convert.base64Decode(
    'Cg5TZW5zb3JNb2RhbGl0eRIfChtTRU5TT1JfTU9EQUxJVFlfVU5TUEVDSUZJRUQQABIXChNTRU'
    '5TT1JfTU9EQUxJVFlfRUNHEAESFwoTU0VOU09SX01PREFMSVRZX1BQRxACEhcKE1NFTlNPUl9N'
    'T0RBTElUWV9FREEQAxIXChNTRU5TT1JfTU9EQUxJVFlfUlNQEAQSIQodU0VOU09SX01PREFMSV'
    'RZX0FDQ0VMRVJPTUVURVIQBRIdChlTRU5TT1JfTU9EQUxJVFlfR1lST1NDT1BFEAYSHwobU0VO'
    'U09SX01PREFMSVRZX1RFTVBFUkFUVVJFEAcSIgoeU0VOU09SX01PREFMSVRZX0JMT09EX1BSRV'
    'NTVVJFEAgSFwoTU0VOU09SX01PREFMSVRZX0JWUBAJEhcKE1NFTlNPUl9NT0RBTElUWV9FTUcQ'
    'ChIYChRTRU5TT1JfTU9EQUxJVFlfUlBQRxAL');

@$core.Deprecated('Use physicalUnitDescriptor instead')
const PhysicalUnit$json = {
  '1': 'PhysicalUnit',
  '2': [
    {'1': 'PHYSICAL_UNIT_UNSPECIFIED', '2': 0},
    {'1': 'PHYSICAL_UNIT_MILLIVOLTS', '2': 1},
    {'1': 'PHYSICAL_UNIT_MICROSIEMENS', '2': 2},
    {'1': 'PHYSICAL_UNIT_CELSIUS', '2': 3},
    {'1': 'PHYSICAL_UNIT_BPM', '2': 4},
    {'1': 'PHYSICAL_UNIT_MILLISECONDS', '2': 5},
    {'1': 'PHYSICAL_UNIT_SECONDS', '2': 6},
    {'1': 'PHYSICAL_UNIT_G_FORCE', '2': 7},
    {'1': 'PHYSICAL_UNIT_METERS_PER_SEC_SQ', '2': 8},
    {'1': 'PHYSICAL_UNIT_MMHG', '2': 9},
    {'1': 'PHYSICAL_UNIT_PERCENT', '2': 10},
    {'1': 'PHYSICAL_UNIT_RADIANS', '2': 11},
  ],
};

/// Descriptor for `PhysicalUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List physicalUnitDescriptor = $convert.base64Decode(
    'CgxQaHlzaWNhbFVuaXQSHQoZUEhZU0lDQUxfVU5JVF9VTlNQRUNJRklFRBAAEhwKGFBIWVNJQ0'
    'FMX1VOSVRfTUlMTElWT0xUUxABEh4KGlBIWVNJQ0FMX1VOSVRfTUlDUk9TSUVNRU5TEAISGQoV'
    'UEhZU0lDQUxfVU5JVF9DRUxTSVVTEAMSFQoRUEhZU0lDQUxfVU5JVF9CUE0QBBIeChpQSFlTSU'
    'NBTF9VTklUX01JTExJU0VDT05EUxAFEhkKFVBIWVNJQ0FMX1VOSVRfU0VDT05EUxAGEhkKFVBI'
    'WVNJQ0FMX1VOSVRfR19GT1JDRRAHEiMKH1BIWVNJQ0FMX1VOSVRfTUVURVJTX1BFUl9TRUNfU1'
    'EQCBIWChJQSFlTSUNBTF9VTklUX01NSEcQCRIZChVQSFlTSUNBTF9VTklUX1BFUkNFTlQQChIZ'
    'ChVQSFlTSUNBTF9VTklUX1JBRElBTlMQCw==');

@$core.Deprecated('Use filterKindDescriptor instead')
const FilterKind$json = {
  '1': 'FilterKind',
  '2': [
    {'1': 'FILTER_KIND_UNSPECIFIED', '2': 0},
    {'1': 'FILTER_KIND_LOWPASS', '2': 1},
    {'1': 'FILTER_KIND_HIGHPASS', '2': 2},
    {'1': 'FILTER_KIND_BANDPASS', '2': 3},
    {'1': 'FILTER_KIND_NOTCH', '2': 4},
  ],
};

/// Descriptor for `FilterKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List filterKindDescriptor = $convert.base64Decode(
    'CgpGaWx0ZXJLaW5kEhsKF0ZJTFRFUl9LSU5EX1VOU1BFQ0lGSUVEEAASFwoTRklMVEVSX0tJTk'
    'RfTE9XUEFTUxABEhgKFEZJTFRFUl9LSU5EX0hJR0hQQVNTEAISGAoURklMVEVSX0tJTkRfQkFO'
    'RFBBU1MQAxIVChFGSUxURVJfS0lORF9OT1RDSBAE');

@$core.Deprecated('Use signalPolarityDescriptor instead')
const SignalPolarity$json = {
  '1': 'SignalPolarity',
  '2': [
    {'1': 'SIGNAL_POLARITY_UNSPECIFIED', '2': 0},
    {'1': 'SIGNAL_POLARITY_NORMAL', '2': 1},
    {'1': 'SIGNAL_POLARITY_INVERTED', '2': 2},
    {'1': 'SIGNAL_POLARITY_AUTO_DETECT', '2': 3},
  ],
};

/// Descriptor for `SignalPolarity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List signalPolarityDescriptor = $convert.base64Decode(
    'Cg5TaWduYWxQb2xhcml0eRIfChtTSUdOQUxfUE9MQVJJVFlfVU5TUEVDSUZJRUQQABIaChZTSU'
    'dOQUxfUE9MQVJJVFlfTk9STUFMEAESHAoYU0lHTkFMX1BPTEFSSVRZX0lOVkVSVEVEEAISHwob'
    'U0lHTkFMX1BPTEFSSVRZX0FVVE9fREVURUNUEAM=');

@$core.Deprecated('Use intervalQualityKindDescriptor instead')
const IntervalQualityKind$json = {
  '1': 'IntervalQualityKind',
  '2': [
    {'1': 'INTERVAL_QUALITY_UNSPECIFIED', '2': 0},
    {'1': 'INTERVAL_QUALITY_NORMAL_NN', '2': 1},
    {'1': 'INTERVAL_QUALITY_ECTOPIC_RR', '2': 2},
    {'1': 'INTERVAL_QUALITY_ARTIFACT_RR', '2': 3},
    {'1': 'INTERVAL_QUALITY_MISSING', '2': 4},
  ],
};

/// Descriptor for `IntervalQualityKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List intervalQualityKindDescriptor = $convert.base64Decode(
    'ChNJbnRlcnZhbFF1YWxpdHlLaW5kEiAKHElOVEVSVkFMX1FVQUxJVFlfVU5TUEVDSUZJRUQQAB'
    'IeChpJTlRFUlZBTF9RVUFMSVRZX05PUk1BTF9OThABEh8KG0lOVEVSVkFMX1FVQUxJVFlfRUNU'
    'T1BJQ19SUhACEiAKHElOVEVSVkFMX1FVQUxJVFlfQVJUSUZBQ1RfUlIQAxIcChhJTlRFUlZBTF'
    '9RVUFMSVRZX01JU1NJTkcQBA==');

@$core.Deprecated('Use correctionPolicyKindDescriptor instead')
const CorrectionPolicyKind$json = {
  '1': 'CorrectionPolicyKind',
  '2': [
    {'1': 'CORRECTION_POLICY_UNSPECIFIED', '2': 0},
    {'1': 'CORRECTION_POLICY_NONE', '2': 1},
    {'1': 'CORRECTION_POLICY_REJECT_INVALID', '2': 2},
    {'1': 'CORRECTION_POLICY_INTERPOLATE_LINEAR', '2': 3},
    {'1': 'CORRECTION_POLICY_INTERPOLATE_CUBIC', '2': 4},
    {'1': 'CORRECTION_POLICY_PERCENT_THRESHOLD', '2': 5},
  ],
};

/// Descriptor for `CorrectionPolicyKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List correctionPolicyKindDescriptor = $convert.base64Decode(
    'ChRDb3JyZWN0aW9uUG9saWN5S2luZBIhCh1DT1JSRUNUSU9OX1BPTElDWV9VTlNQRUNJRklFRB'
    'AAEhoKFkNPUlJFQ1RJT05fUE9MSUNZX05PTkUQARIkCiBDT1JSRUNUSU9OX1BPTElDWV9SRUpF'
    'Q1RfSU5WQUxJRBACEigKJENPUlJFQ1RJT05fUE9MSUNZX0lOVEVSUE9MQVRFX0xJTkVBUhADEi'
    'cKI0NPUlJFQ1RJT05fUE9MSUNZX0lOVEVSUE9MQVRFX0NVQklDEAQSJwojQ09SUkVDVElPTl9Q'
    'T0xJQ1lfUEVSQ0VOVF9USFJFU0hPTEQQBQ==');

@$core.Deprecated('Use rppgAlgorithmIdDescriptor instead')
const RppgAlgorithmId$json = {
  '1': 'RppgAlgorithmId',
  '2': [
    {'1': 'RPPG_ALGORITHM_ID_UNSPECIFIED', '2': 0},
    {'1': 'RPPG_ALGORITHM_ID_POS', '2': 1},
    {'1': 'RPPG_ALGORITHM_ID_CHROM', '2': 2},
    {'1': 'RPPG_ALGORITHM_ID_GREEN', '2': 3},
  ],
};

/// Descriptor for `RppgAlgorithmId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rppgAlgorithmIdDescriptor = $convert.base64Decode(
    'Cg9ScHBnQWxnb3JpdGhtSWQSIQodUlBQR19BTEdPUklUSE1fSURfVU5TUEVDSUZJRUQQABIZCh'
    'VSUFBHX0FMR09SSVRITV9JRF9QT1MQARIbChdSUFBHX0FMR09SSVRITV9JRF9DSFJPTRACEhsK'
    'F1JQUEdfQUxHT1JJVEhNX0lEX0dSRUVOEAM=');

@$core.Deprecated('Use featureQualityIssueDescriptor instead')
const FeatureQualityIssue$json = {
  '1': 'FeatureQualityIssue',
  '2': [
    {'1': 'FEATURE_QUALITY_ISSUE_UNSPECIFIED', '2': 0},
    {'1': 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_BEATS', '2': 1},
    {'1': 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_RESPIRATION_CYCLES', '2': 2},
    {'1': 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_SCR_EVENTS', '2': 3},
    {'1': 'FEATURE_QUALITY_ISSUE_LOW_COVERAGE', '2': 4},
    {'1': 'FEATURE_QUALITY_ISSUE_MISSING_MODALITY', '2': 5},
    {'1': 'FEATURE_QUALITY_ISSUE_INVALID_INPUT', '2': 6},
  ],
};

/// Descriptor for `FeatureQualityIssue`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureQualityIssueDescriptor = $convert.base64Decode(
    'ChNGZWF0dXJlUXVhbGl0eUlzc3VlEiUKIUZFQVRVUkVfUVVBTElUWV9JU1NVRV9VTlNQRUNJRk'
    'lFRBAAEiwKKEZFQVRVUkVfUVVBTElUWV9JU1NVRV9JTlNVRkZJQ0lFTlRfQkVBVFMQARI5CjVG'
    'RUFUVVJFX1FVQUxJVFlfSVNTVUVfSU5TVUZGSUNJRU5UX1JFU1BJUkFUSU9OX0NZQ0xFUxACEj'
    'EKLUZFQVRVUkVfUVVBTElUWV9JU1NVRV9JTlNVRkZJQ0lFTlRfU0NSX0VWRU5UUxADEiYKIkZF'
    'QVRVUkVfUVVBTElUWV9JU1NVRV9MT1dfQ09WRVJBR0UQBBIqCiZGRUFUVVJFX1FVQUxJVFlfSV'
    'NTVUVfTUlTU0lOR19NT0RBTElUWRAFEicKI0ZFQVRVUkVfUVVBTElUWV9JU1NVRV9JTlZBTElE'
    'X0lOUFVUEAY=');

@$core.Deprecated('Use deviceMetadataDescriptor instead')
const DeviceMetadata$json = {
  '1': 'DeviceMetadata',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'hardware_model', '3': 4, '4': 1, '5': 9, '10': 'hardwareModel'},
    {'1': 'firmware_version', '3': 5, '4': 1, '5': 9, '10': 'firmwareVersion'},
    {'1': 'battery_percent', '3': 6, '4': 1, '5': 13, '10': 'batteryPercent'},
    {'1': 'sensor_location', '3': 7, '4': 1, '5': 9, '10': 'sensorLocation'},
  ],
};

/// Descriptor for `DeviceMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceMetadataDescriptor = $convert.base64Decode(
    'Cg5EZXZpY2VNZXRhZGF0YRIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEh0KCnBhdGllbn'
    'RfaWQYAiABKAlSCXBhdGllbnRJZBIdCgpzZXNzaW9uX2lkGAMgASgJUglzZXNzaW9uSWQSJQoO'
    'aGFyZHdhcmVfbW9kZWwYBCABKAlSDWhhcmR3YXJlTW9kZWwSKQoQZmlybXdhcmVfdmVyc2lvbh'
    'gFIAEoCVIPZmlybXdhcmVWZXJzaW9uEicKD2JhdHRlcnlfcGVyY2VudBgGIAEoDVIOYmF0dGVy'
    'eVBlcmNlbnQSJwoPc2Vuc29yX2xvY2F0aW9uGAcgASgJUg5zZW5zb3JMb2NhdGlvbg==');

@$core.Deprecated('Use correctionPolicyDescriptor instead')
const CorrectionPolicy$json = {
  '1': 'CorrectionPolicy',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.CorrectionPolicyKind',
      '10': 'kind'
    },
    {
      '1': 'percent_threshold',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'percentThreshold'
    },
  ],
};

/// Descriptor for `CorrectionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List correctionPolicyDescriptor = $convert.base64Decode(
    'ChBDb3JyZWN0aW9uUG9saWN5EkUKBGtpbmQYASABKA4yMS5pbnZpc2libGVfaWxsbmVzcy5zZW'
    '5zb3IudjEuQ29ycmVjdGlvblBvbGljeUtpbmRSBGtpbmQSKwoRcGVyY2VudF90aHJlc2hvbGQY'
    'AiABKAFSEHBlcmNlbnRUaHJlc2hvbGQ=');

@$core.Deprecated('Use filterSpecDescriptor instead')
const FilterSpec$json = {
  '1': 'FilterSpec',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.FilterKind',
      '10': 'kind'
    },
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'cutoffs_hz', '3': 3, '4': 3, '5': 1, '10': 'cutoffsHz'},
    {'1': 'order', '3': 4, '4': 1, '5': 13, '10': 'order'},
  ],
};

/// Descriptor for `FilterSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterSpecDescriptor = $convert.base64Decode(
    'CgpGaWx0ZXJTcGVjEjsKBGtpbmQYASABKA4yJy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3Iudj'
    'EuRmlsdGVyS2luZFIEa2luZBIoChBzYW1wbGluZ19yYXRlX2h6GAIgASgBUg5zYW1wbGluZ1Jh'
    'dGVIehIdCgpjdXRvZmZzX2h6GAMgAygBUgljdXRvZmZzSHoSFAoFb3JkZXIYBCABKA1SBW9yZG'
    'Vy');

@$core.Deprecated('Use doubleArrayDescriptor instead')
const DoubleArray$json = {
  '1': 'DoubleArray',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `DoubleArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleArrayDescriptor = $convert
    .base64Decode('CgtEb3VibGVBcnJheRIWCgZ2YWx1ZXMYASADKAFSBnZhbHVlcw==');

@$core.Deprecated('Use continuousSignalBatchDescriptor instead')
const ContinuousSignalBatch$json = {
  '1': 'ContinuousSignalBatch',
  '2': [
    {
      '1': 'start_timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startTimestamp'
    },
    {'1': 'start_offset_sec', '3': 2, '4': 1, '5': 1, '10': 'startOffsetSec'},
    {'1': 'sampling_rate_hz', '3': 3, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {
      '1': 'modality',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SensorModality',
      '10': 'modality'
    },
    {
      '1': 'unit',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.PhysicalUnit',
      '10': 'unit'
    },
    {'1': 'channel_name', '3': 6, '4': 1, '5': 9, '10': 'channelName'},
    {'1': 'samples', '3': 7, '4': 3, '5': 1, '10': 'samples'},
    {'1': 'missing_mask', '3': 8, '4': 3, '5': 8, '10': 'missingMask'},
    {
      '1': 'filter_applied',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.FilterSpec',
      '10': 'filterApplied'
    },
    {
      '1': 'metadata',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `ContinuousSignalBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List continuousSignalBatchDescriptor = $convert.base64Decode(
    'ChVDb250aW51b3VzU2lnbmFsQmF0Y2gSQwoPc3RhcnRfdGltZXN0YW1wGAEgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIOc3RhcnRUaW1lc3RhbXASKAoQc3RhcnRfb2Zmc2V0X3Nl'
    'YxgCIAEoAVIOc3RhcnRPZmZzZXRTZWMSKAoQc2FtcGxpbmdfcmF0ZV9oehgDIAEoAVIOc2FtcG'
    'xpbmdSYXRlSHoSRwoIbW9kYWxpdHkYBCABKA4yKy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3Iu'
    'djEuU2Vuc29yTW9kYWxpdHlSCG1vZGFsaXR5Ej0KBHVuaXQYBSABKA4yKS5pbnZpc2libGVfaW'
    'xsbmVzcy5zZW5zb3IudjEuUGh5c2ljYWxVbml0UgR1bml0EiEKDGNoYW5uZWxfbmFtZRgGIAEo'
    'CVILY2hhbm5lbE5hbWUSGAoHc2FtcGxlcxgHIAMoAVIHc2FtcGxlcxIhCgxtaXNzaW5nX21hc2'
    'sYCCADKAhSC21pc3NpbmdNYXNrEk4KDmZpbHRlcl9hcHBsaWVkGAkgASgLMicuaW52aXNpYmxl'
    'X2lsbG5lc3Muc2Vuc29yLnYxLkZpbHRlclNwZWNSDWZpbHRlckFwcGxpZWQSRwoIbWV0YWRhdG'
    'EYCiABKAsyKy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuRGV2aWNlTWV0YWRhdGFSCG1l'
    'dGFkYXRh');

@$core.Deprecated('Use multiChannelSignalBatchDescriptor instead')
const MultiChannelSignalBatch$json = {
  '1': 'MultiChannelSignalBatch',
  '2': [
    {
      '1': 'start_timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startTimestamp'
    },
    {'1': 'start_offset_sec', '3': 2, '4': 1, '5': 1, '10': 'startOffsetSec'},
    {'1': 'sampling_rate_hz', '3': 3, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {
      '1': 'modality',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SensorModality',
      '10': 'modality'
    },
    {'1': 'channel_names', '3': 5, '4': 3, '5': 9, '10': 'channelNames'},
    {
      '1': 'channel_units',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.PhysicalUnit',
      '10': 'channelUnits'
    },
    {
      '1': 'channel_samples',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DoubleArray',
      '10': 'channelSamples'
    },
    {
      '1': 'metadata',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `MultiChannelSignalBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiChannelSignalBatchDescriptor = $convert.base64Decode(
    'ChdNdWx0aUNoYW5uZWxTaWduYWxCYXRjaBJDCg9zdGFydF90aW1lc3RhbXAYASABKAsyGi5nb2'
    '9nbGUucHJvdG9idWYuVGltZXN0YW1wUg5zdGFydFRpbWVzdGFtcBIoChBzdGFydF9vZmZzZXRf'
    'c2VjGAIgASgBUg5zdGFydE9mZnNldFNlYxIoChBzYW1wbGluZ19yYXRlX2h6GAMgASgBUg5zYW'
    '1wbGluZ1JhdGVIehJHCghtb2RhbGl0eRgEIAEoDjIrLmludmlzaWJsZV9pbGxuZXNzLnNlbnNv'
    'ci52MS5TZW5zb3JNb2RhbGl0eVIIbW9kYWxpdHkSIwoNY2hhbm5lbF9uYW1lcxgFIAMoCVIMY2'
    'hhbm5lbE5hbWVzEk4KDWNoYW5uZWxfdW5pdHMYBiADKA4yKS5pbnZpc2libGVfaWxsbmVzcy5z'
    'ZW5zb3IudjEuUGh5c2ljYWxVbml0UgxjaGFubmVsVW5pdHMSUQoPY2hhbm5lbF9zYW1wbGVzGA'
    'cgAygLMiguaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkRvdWJsZUFycmF5Ug5jaGFubmVs'
    'U2FtcGxlcxJHCghtZXRhZGF0YRgIIAEoCzIrLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS'
    '5EZXZpY2VNZXRhZGF0YVIIbWV0YWRhdGE=');

@$core.Deprecated('Use singlePointMeasurementDescriptor instead')
const SinglePointMeasurement$json = {
  '1': 'SinglePointMeasurement',
  '2': [
    {
      '1': 'timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    {
      '1': 'modality',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SensorModality',
      '10': 'modality'
    },
    {'1': 'value', '3': 3, '4': 1, '5': 1, '10': 'value'},
    {
      '1': 'unit',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.PhysicalUnit',
      '10': 'unit'
    },
    {'1': 'metric_name', '3': 5, '4': 1, '5': 9, '10': 'metricName'},
    {
      '1': 'metadata',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `SinglePointMeasurement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List singlePointMeasurementDescriptor = $convert.base64Decode(
    'ChZTaW5nbGVQb2ludE1lYXN1cmVtZW50EjgKCXRpbWVzdGFtcBgBIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcBJHCghtb2RhbGl0eRgCIAEoDjIrLmludmlzaWJs'
    'ZV9pbGxuZXNzLnNlbnNvci52MS5TZW5zb3JNb2RhbGl0eVIIbW9kYWxpdHkSFAoFdmFsdWUYAy'
    'ABKAFSBXZhbHVlEj0KBHVuaXQYBCABKA4yKS5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEu'
    'UGh5c2ljYWxVbml0UgR1bml0Eh8KC21ldHJpY19uYW1lGAUgASgJUgptZXRyaWNOYW1lEkcKCG'
    '1ldGFkYXRhGAYgASgLMisuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkRldmljZU1ldGFk'
    'YXRhUghtZXRhZGF0YQ==');

@$core.Deprecated('Use bloodPressureMeasurementDescriptor instead')
const BloodPressureMeasurement$json = {
  '1': 'BloodPressureMeasurement',
  '2': [
    {
      '1': 'timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    {'1': 'systolic_mmhg', '3': 2, '4': 1, '5': 13, '10': 'systolicMmhg'},
    {'1': 'diastolic_mmhg', '3': 3, '4': 1, '5': 13, '10': 'diastolicMmhg'},
    {
      '1': 'metadata',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `BloodPressureMeasurement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodPressureMeasurementDescriptor = $convert.base64Decode(
    'ChhCbG9vZFByZXNzdXJlTWVhc3VyZW1lbnQSOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1wEiMKDXN5c3RvbGljX21taGcYAiABKA1SDHN5'
    'c3RvbGljTW1oZxIlCg5kaWFzdG9saWNfbW1oZxgDIAEoDVINZGlhc3RvbGljTW1oZxJHCghtZX'
    'RhZGF0YRgEIAEoCzIrLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5EZXZpY2VNZXRhZGF0'
    'YVIIbWV0YWRhdGE=');

@$core.Deprecated('Use cardiacPeakEventDescriptor instead')
const CardiacPeakEvent$json = {
  '1': 'CardiacPeakEvent',
  '2': [
    {'1': 'sample_index', '3': 1, '4': 1, '5': 4, '10': 'sampleIndex'},
    {'1': 'timestamp_sec', '3': 2, '4': 1, '5': 1, '10': 'timestampSec'},
    {'1': 'amplitude', '3': 3, '4': 1, '5': 1, '10': 'amplitude'},
    {
      '1': 'modality',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SensorModality',
      '10': 'modality'
    },
  ],
};

/// Descriptor for `CardiacPeakEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardiacPeakEventDescriptor = $convert.base64Decode(
    'ChBDYXJkaWFjUGVha0V2ZW50EiEKDHNhbXBsZV9pbmRleBgBIAEoBFILc2FtcGxlSW5kZXgSIw'
    'oNdGltZXN0YW1wX3NlYxgCIAEoAVIMdGltZXN0YW1wU2VjEhwKCWFtcGxpdHVkZRgDIAEoAVIJ'
    'YW1wbGl0dWRlEkcKCG1vZGFsaXR5GAQgASgOMisuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLn'
    'YxLlNlbnNvck1vZGFsaXR5Ughtb2RhbGl0eQ==');

@$core.Deprecated('Use cardiacPeakBatchDescriptor instead')
const CardiacPeakBatch$json = {
  '1': 'CardiacPeakBatch',
  '2': [
    {
      '1': 'events',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CardiacPeakEvent',
      '10': 'events'
    },
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'offset_sec', '3': 3, '4': 1, '5': 1, '10': 'offsetSec'},
    {
      '1': 'metadata',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `CardiacPeakBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardiacPeakBatchDescriptor = $convert.base64Decode(
    'ChBDYXJkaWFjUGVha0JhdGNoEkUKBmV2ZW50cxgBIAMoCzItLmludmlzaWJsZV9pbGxuZXNzLn'
    'NlbnNvci52MS5DYXJkaWFjUGVha0V2ZW50UgZldmVudHMSKAoQc2FtcGxpbmdfcmF0ZV9oehgC'
    'IAEoAVIOc2FtcGxpbmdSYXRlSHoSHQoKb2Zmc2V0X3NlYxgDIAEoAVIJb2Zmc2V0U2VjEkcKCG'
    '1ldGFkYXRhGAQgASgLMisuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkRldmljZU1ldGFk'
    'YXRhUghtZXRhZGF0YQ==');

@$core.Deprecated('Use scrEventDescriptor instead')
const ScrEvent$json = {
  '1': 'ScrEvent',
  '2': [
    {'1': 'onset_index', '3': 1, '4': 1, '5': 4, '10': 'onsetIndex'},
    {'1': 'onset_time_sec', '3': 2, '4': 1, '5': 1, '10': 'onsetTimeSec'},
    {'1': 'peak_index', '3': 3, '4': 1, '5': 4, '10': 'peakIndex'},
    {'1': 'peak_time_sec', '3': 4, '4': 1, '5': 1, '10': 'peakTimeSec'},
    {'1': 'amplitude_us', '3': 5, '4': 1, '5': 1, '10': 'amplitudeUs'},
    {'1': 'rise_time_sec', '3': 6, '4': 1, '5': 1, '10': 'riseTimeSec'},
  ],
};

/// Descriptor for `ScrEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scrEventDescriptor = $convert.base64Decode(
    'CghTY3JFdmVudBIfCgtvbnNldF9pbmRleBgBIAEoBFIKb25zZXRJbmRleBIkCg5vbnNldF90aW'
    '1lX3NlYxgCIAEoAVIMb25zZXRUaW1lU2VjEh0KCnBlYWtfaW5kZXgYAyABKARSCXBlYWtJbmRl'
    'eBIiCg1wZWFrX3RpbWVfc2VjGAQgASgBUgtwZWFrVGltZVNlYxIhCgxhbXBsaXR1ZGVfdXMYBS'
    'ABKAFSC2FtcGxpdHVkZVVzEiIKDXJpc2VfdGltZV9zZWMYBiABKAFSC3Jpc2VUaW1lU2Vj');

@$core.Deprecated('Use scrEventBatchDescriptor instead')
const ScrEventBatch$json = {
  '1': 'ScrEventBatch',
  '2': [
    {
      '1': 'events',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.ScrEvent',
      '10': 'events'
    },
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'offset_sec', '3': 3, '4': 1, '5': 1, '10': 'offsetSec'},
    {
      '1': 'metadata',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `ScrEventBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scrEventBatchDescriptor = $convert.base64Decode(
    'Cg1TY3JFdmVudEJhdGNoEj0KBmV2ZW50cxgBIAMoCzIlLmludmlzaWJsZV9pbGxuZXNzLnNlbn'
    'Nvci52MS5TY3JFdmVudFIGZXZlbnRzEigKEHNhbXBsaW5nX3JhdGVfaHoYAiABKAFSDnNhbXBs'
    'aW5nUmF0ZUh6Eh0KCm9mZnNldF9zZWMYAyABKAFSCW9mZnNldFNlYxJHCghtZXRhZGF0YRgEIA'
    'EoCzIrLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5EZXZpY2VNZXRhZGF0YVIIbWV0YWRh'
    'dGE=');

@$core.Deprecated('Use respirationCycleDescriptor instead')
const RespirationCycle$json = {
  '1': 'RespirationCycle',
  '2': [
    {
      '1': 'inspiration_index',
      '3': 1,
      '4': 1,
      '5': 4,
      '10': 'inspirationIndex'
    },
    {
      '1': 'inspiration_time_sec',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'inspirationTimeSec'
    },
    {'1': 'expiration_index', '3': 3, '4': 1, '5': 4, '10': 'expirationIndex'},
    {
      '1': 'expiration_time_sec',
      '3': 4,
      '4': 1,
      '5': 1,
      '10': 'expirationTimeSec'
    },
    {'1': 'duration_sec', '3': 5, '4': 1, '5': 1, '10': 'durationSec'},
    {'1': 'amplitude', '3': 6, '4': 1, '5': 1, '10': 'amplitude'},
    {'1': 'is_valid', '3': 7, '4': 1, '5': 8, '10': 'isValid'},
  ],
};

/// Descriptor for `RespirationCycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respirationCycleDescriptor = $convert.base64Decode(
    'ChBSZXNwaXJhdGlvbkN5Y2xlEisKEWluc3BpcmF0aW9uX2luZGV4GAEgASgEUhBpbnNwaXJhdG'
    'lvbkluZGV4EjAKFGluc3BpcmF0aW9uX3RpbWVfc2VjGAIgASgBUhJpbnNwaXJhdGlvblRpbWVT'
    'ZWMSKQoQZXhwaXJhdGlvbl9pbmRleBgDIAEoBFIPZXhwaXJhdGlvbkluZGV4Ei4KE2V4cGlyYX'
    'Rpb25fdGltZV9zZWMYBCABKAFSEWV4cGlyYXRpb25UaW1lU2VjEiEKDGR1cmF0aW9uX3NlYxgF'
    'IAEoAVILZHVyYXRpb25TZWMSHAoJYW1wbGl0dWRlGAYgASgBUglhbXBsaXR1ZGUSGQoIaXNfdm'
    'FsaWQYByABKAhSB2lzVmFsaWQ=');

@$core.Deprecated('Use respirationCycleBatchDescriptor instead')
const RespirationCycleBatch$json = {
  '1': 'RespirationCycleBatch',
  '2': [
    {
      '1': 'cycles',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RespirationCycle',
      '10': 'cycles'
    },
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'offset_sec', '3': 3, '4': 1, '5': 1, '10': 'offsetSec'},
    {
      '1': 'metadata',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `RespirationCycleBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respirationCycleBatchDescriptor = $convert.base64Decode(
    'ChVSZXNwaXJhdGlvbkN5Y2xlQmF0Y2gSRQoGY3ljbGVzGAEgAygLMi0uaW52aXNpYmxlX2lsbG'
    '5lc3Muc2Vuc29yLnYxLlJlc3BpcmF0aW9uQ3ljbGVSBmN5Y2xlcxIoChBzYW1wbGluZ19yYXRl'
    'X2h6GAIgASgBUg5zYW1wbGluZ1JhdGVIehIdCgpvZmZzZXRfc2VjGAMgASgBUglvZmZzZXRTZW'
    'MSRwoIbWV0YWRhdGEYBCABKAsyKy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuRGV2aWNl'
    'TWV0YWRhdGFSCG1ldGFkYXRh');

@$core.Deprecated('Use pulseTimingResultDescriptor instead')
const PulseTimingResult$json = {
  '1': 'PulseTimingResult',
  '2': [
    {'1': 'r_peak_time_sec', '3': 1, '4': 1, '5': 1, '10': 'rPeakTimeSec'},
    {'1': 'ppg_peak_time_sec', '3': 2, '4': 1, '5': 1, '10': 'ppgPeakTimeSec'},
    {'1': 'pulse_delay_sec', '3': 3, '4': 1, '5': 1, '10': 'pulseDelaySec'},
  ],
};

/// Descriptor for `PulseTimingResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pulseTimingResultDescriptor = $convert.base64Decode(
    'ChFQdWxzZVRpbWluZ1Jlc3VsdBIlCg9yX3BlYWtfdGltZV9zZWMYASABKAFSDHJQZWFrVGltZV'
    'NlYxIpChFwcGdfcGVha190aW1lX3NlYxgCIAEoAVIOcHBnUGVha1RpbWVTZWMSJgoPcHVsc2Vf'
    'ZGVsYXlfc2VjGAMgASgBUg1wdWxzZURlbGF5U2Vj');

@$core.Deprecated('Use pulseTimingBatchDescriptor instead')
const PulseTimingBatch$json = {
  '1': 'PulseTimingBatch',
  '2': [
    {
      '1': 'timings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.PulseTimingResult',
      '10': 'timings'
    },
    {
      '1': 'metadata',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `PulseTimingBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pulseTimingBatchDescriptor = $convert.base64Decode(
    'ChBQdWxzZVRpbWluZ0JhdGNoEkgKB3RpbWluZ3MYASADKAsyLi5pbnZpc2libGVfaWxsbmVzcy'
    '5zZW5zb3IudjEuUHVsc2VUaW1pbmdSZXN1bHRSB3RpbWluZ3MSRwoIbWV0YWRhdGEYAiABKAsy'
    'Ky5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuRGV2aWNlTWV0YWRhdGFSCG1ldGFkYXRh');

@$core.Deprecated('Use rsaResultDescriptor instead')
const RsaResult$json = {
  '1': 'RsaResult',
  '2': [
    {'1': 'beat_time_sec', '3': 1, '4': 1, '5': 1, '10': 'beatTimeSec'},
    {'1': 'amplitude_bpm', '3': 2, '4': 1, '5': 1, '10': 'amplitudeBpm'},
    {'1': 'amplitude_rr_sec', '3': 3, '4': 1, '5': 1, '10': 'amplitudeRrSec'},
  ],
};

/// Descriptor for `RsaResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rsaResultDescriptor = $convert.base64Decode(
    'CglSc2FSZXN1bHQSIgoNYmVhdF90aW1lX3NlYxgBIAEoAVILYmVhdFRpbWVTZWMSIwoNYW1wbG'
    'l0dWRlX2JwbRgCIAEoAVIMYW1wbGl0dWRlQnBtEigKEGFtcGxpdHVkZV9ycl9zZWMYAyABKAFS'
    'DmFtcGxpdHVkZVJyU2Vj');

@$core.Deprecated('Use rsaBatchDescriptor instead')
const RsaBatch$json = {
  '1': 'RsaBatch',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RsaResult',
      '10': 'results'
    },
    {
      '1': 'metadata',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `RsaBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rsaBatchDescriptor = $convert.base64Decode(
    'CghSc2FCYXRjaBJACgdyZXN1bHRzGAEgAygLMiYuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLn'
    'YxLlJzYVJlc3VsdFIHcmVzdWx0cxJHCghtZXRhZGF0YRgCIAEoCzIrLmludmlzaWJsZV9pbGxu'
    'ZXNzLnNlbnNvci52MS5EZXZpY2VNZXRhZGF0YVIIbWV0YWRhdGE=');

@$core.Deprecated('Use featureWindowDescriptor instead')
const FeatureWindow$json = {
  '1': 'FeatureWindow',
  '2': [
    {'1': 'start_time_sec', '3': 1, '4': 1, '5': 1, '10': 'startTimeSec'},
    {'1': 'end_time_sec', '3': 2, '4': 1, '5': 1, '10': 'endTimeSec'},
    {'1': 'duration_sec', '3': 3, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `FeatureWindow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureWindowDescriptor = $convert.base64Decode(
    'Cg1GZWF0dXJlV2luZG93EiQKDnN0YXJ0X3RpbWVfc2VjGAEgASgBUgxzdGFydFRpbWVTZWMSIA'
    'oMZW5kX3RpbWVfc2VjGAIgASgBUgplbmRUaW1lU2VjEiEKDGR1cmF0aW9uX3NlYxgDIAEoAVIL'
    'ZHVyYXRpb25TZWM=');

@$core.Deprecated('Use cardiacFeaturesDescriptor instead')
const CardiacFeatures$json = {
  '1': 'CardiacFeatures',
  '2': [
    {
      '1': 'mean_hr_bpm',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'meanHrBpm',
      '17': true
    },
    {
      '1': 'median_hr_bpm',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'medianHrBpm',
      '17': true
    },
    {
      '1': 'sdnn_ms',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'sdnnMs',
      '17': true
    },
    {
      '1': 'rmssd_ms',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'rmssdMs',
      '17': true
    },
    {'1': 'pnn50', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'pnn50', '17': true},
    {
      '1': 'rr_mean_ms',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'rrMeanMs',
      '17': true
    },
    {
      '1': 'rr_std_ms',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 6,
      '10': 'rrStdMs',
      '17': true
    },
    {'1': 'beat_count', '3': 8, '4': 1, '5': 4, '10': 'beatCount'},
  ],
  '8': [
    {'1': '_mean_hr_bpm'},
    {'1': '_median_hr_bpm'},
    {'1': '_sdnn_ms'},
    {'1': '_rmssd_ms'},
    {'1': '_pnn50'},
    {'1': '_rr_mean_ms'},
    {'1': '_rr_std_ms'},
  ],
};

/// Descriptor for `CardiacFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardiacFeaturesDescriptor = $convert.base64Decode(
    'Cg9DYXJkaWFjRmVhdHVyZXMSIwoLbWVhbl9ocl9icG0YASABKAFIAFIJbWVhbkhyQnBtiAEBEi'
    'cKDW1lZGlhbl9ocl9icG0YAiABKAFIAVILbWVkaWFuSHJCcG2IAQESHAoHc2Rubl9tcxgDIAEo'
    'AUgCUgZzZG5uTXOIAQESHgoIcm1zc2RfbXMYBCABKAFIA1IHcm1zc2RNc4gBARIZCgVwbm41MB'
    'gFIAEoAUgEUgVwbm41MIgBARIhCgpycl9tZWFuX21zGAYgASgBSAVSCHJyTWVhbk1ziAEBEh8K'
    'CXJyX3N0ZF9tcxgHIAEoAUgGUgdyclN0ZE1ziAEBEh0KCmJlYXRfY291bnQYCCABKARSCWJlYX'
    'RDb3VudEIOCgxfbWVhbl9ocl9icG1CEAoOX21lZGlhbl9ocl9icG1CCgoIX3Nkbm5fbXNCCwoJ'
    'X3Jtc3NkX21zQggKBl9wbm41MEINCgtfcnJfbWVhbl9tc0IMCgpfcnJfc3RkX21z');

@$core.Deprecated('Use edaFeaturesDescriptor instead')
const EdaFeatures$json = {
  '1': 'EdaFeatures',
  '2': [
    {
      '1': 'mean_tonic_us',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'meanTonicUs',
      '17': true
    },
    {
      '1': 'median_tonic_us',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'medianTonicUs',
      '17': true
    },
    {
      '1': 'tonic_std_us',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'tonicStdUs',
      '17': true
    },
    {
      '1': 'mean_phasic_us',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'meanPhasicUs',
      '17': true
    },
    {
      '1': 'phasic_std_us',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'phasicStdUs',
      '17': true
    },
    {'1': 'scr_count', '3': 6, '4': 1, '5': 4, '10': 'scrCount'},
    {
      '1': 'scr_rate_per_min',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'scrRatePerMin',
      '17': true
    },
    {
      '1': 'mean_scr_amplitude_us',
      '3': 8,
      '4': 1,
      '5': 1,
      '9': 6,
      '10': 'meanScrAmplitudeUs',
      '17': true
    },
    {
      '1': 'median_scr_amplitude_us',
      '3': 9,
      '4': 1,
      '5': 1,
      '9': 7,
      '10': 'medianScrAmplitudeUs',
      '17': true
    },
    {
      '1': 'mean_scr_rise_time_sec',
      '3': 10,
      '4': 1,
      '5': 1,
      '9': 8,
      '10': 'meanScrRiseTimeSec',
      '17': true
    },
  ],
  '8': [
    {'1': '_mean_tonic_us'},
    {'1': '_median_tonic_us'},
    {'1': '_tonic_std_us'},
    {'1': '_mean_phasic_us'},
    {'1': '_phasic_std_us'},
    {'1': '_scr_rate_per_min'},
    {'1': '_mean_scr_amplitude_us'},
    {'1': '_median_scr_amplitude_us'},
    {'1': '_mean_scr_rise_time_sec'},
  ],
};

/// Descriptor for `EdaFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edaFeaturesDescriptor = $convert.base64Decode(
    'CgtFZGFGZWF0dXJlcxInCg1tZWFuX3RvbmljX3VzGAEgASgBSABSC21lYW5Ub25pY1VziAEBEi'
    'sKD21lZGlhbl90b25pY191cxgCIAEoAUgBUg1tZWRpYW5Ub25pY1VziAEBEiUKDHRvbmljX3N0'
    'ZF91cxgDIAEoAUgCUgp0b25pY1N0ZFVziAEBEikKDm1lYW5fcGhhc2ljX3VzGAQgASgBSANSDG'
    '1lYW5QaGFzaWNVc4gBARInCg1waGFzaWNfc3RkX3VzGAUgASgBSARSC3BoYXNpY1N0ZFVziAEB'
    'EhsKCXNjcl9jb3VudBgGIAEoBFIIc2NyQ291bnQSLAoQc2NyX3JhdGVfcGVyX21pbhgHIAEoAU'
    'gFUg1zY3JSYXRlUGVyTWluiAEBEjYKFW1lYW5fc2NyX2FtcGxpdHVkZV91cxgIIAEoAUgGUhJt'
    'ZWFuU2NyQW1wbGl0dWRlVXOIAQESOgoXbWVkaWFuX3Njcl9hbXBsaXR1ZGVfdXMYCSABKAFIB1'
    'IUbWVkaWFuU2NyQW1wbGl0dWRlVXOIAQESNwoWbWVhbl9zY3JfcmlzZV90aW1lX3NlYxgKIAEo'
    'AUgIUhJtZWFuU2NyUmlzZVRpbWVTZWOIAQFCEAoOX21lYW5fdG9uaWNfdXNCEgoQX21lZGlhbl'
    '90b25pY191c0IPCg1fdG9uaWNfc3RkX3VzQhEKD19tZWFuX3BoYXNpY191c0IQCg5fcGhhc2lj'
    'X3N0ZF91c0ITChFfc2NyX3JhdGVfcGVyX21pbkIYChZfbWVhbl9zY3JfYW1wbGl0dWRlX3VzQh'
    'oKGF9tZWRpYW5fc2NyX2FtcGxpdHVkZV91c0IZChdfbWVhbl9zY3JfcmlzZV90aW1lX3NlYw==');

@$core.Deprecated('Use respirationFeaturesDescriptor instead')
const RespirationFeatures$json = {
  '1': 'RespirationFeatures',
  '2': [
    {
      '1': 'mean_rate_bpm',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'meanRateBpm',
      '17': true
    },
    {
      '1': 'median_rate_bpm',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'medianRateBpm',
      '17': true
    },
    {
      '1': 'rate_std_bpm',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'rateStdBpm',
      '17': true
    },
    {
      '1': 'mean_cycle_duration_sec',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'meanCycleDurationSec',
      '17': true
    },
    {'1': 'cycle_count', '3': 5, '4': 1, '5': 4, '10': 'cycleCount'},
    {
      '1': 'mean_amplitude',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'meanAmplitude',
      '17': true
    },
    {
      '1': 'amplitude_std',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'amplitudeStd',
      '17': true
    },
  ],
  '8': [
    {'1': '_mean_rate_bpm'},
    {'1': '_median_rate_bpm'},
    {'1': '_rate_std_bpm'},
    {'1': '_mean_cycle_duration_sec'},
    {'1': '_mean_amplitude'},
    {'1': '_amplitude_std'},
  ],
};

/// Descriptor for `RespirationFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respirationFeaturesDescriptor = $convert.base64Decode(
    'ChNSZXNwaXJhdGlvbkZlYXR1cmVzEicKDW1lYW5fcmF0ZV9icG0YASABKAFIAFILbWVhblJhdG'
    'VCcG2IAQESKwoPbWVkaWFuX3JhdGVfYnBtGAIgASgBSAFSDW1lZGlhblJhdGVCcG2IAQESJQoM'
    'cmF0ZV9zdGRfYnBtGAMgASgBSAJSCnJhdGVTdGRCcG2IAQESOgoXbWVhbl9jeWNsZV9kdXJhdG'
    'lvbl9zZWMYBCABKAFIA1IUbWVhbkN5Y2xlRHVyYXRpb25TZWOIAQESHwoLY3ljbGVfY291bnQY'
    'BSABKARSCmN5Y2xlQ291bnQSKgoObWVhbl9hbXBsaXR1ZGUYBiABKAFIBFINbWVhbkFtcGxpdH'
    'VkZYgBARIoCg1hbXBsaXR1ZGVfc3RkGAcgASgBSAVSDGFtcGxpdHVkZVN0ZIgBAUIQCg5fbWVh'
    'bl9yYXRlX2JwbUISChBfbWVkaWFuX3JhdGVfYnBtQg8KDV9yYXRlX3N0ZF9icG1CGgoYX21lYW'
    '5fY3ljbGVfZHVyYXRpb25fc2VjQhEKD19tZWFuX2FtcGxpdHVkZUIQCg5fYW1wbGl0dWRlX3N0'
    'ZA==');

@$core.Deprecated('Use couplingFeaturesDescriptor instead')
const CouplingFeatures$json = {
  '1': 'CouplingFeatures',
  '2': [
    {
      '1': 'rsa_amplitude_bpm',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'rsaAmplitudeBpm',
      '17': true
    },
    {
      '1': 'rsa_amplitude_rr_sec',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'rsaAmplitudeRrSec',
      '17': true
    },
    {
      '1': 'cardiac_respiratory_concentration',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'cardiacRespiratoryConcentration',
      '17': true
    },
    {
      '1': 'cardiac_respiratory_mean_phase',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'cardiacRespiratoryMeanPhase',
      '17': true
    },
    {
      '1': 'mean_pulse_delay_sec',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'meanPulseDelaySec',
      '17': true
    },
    {
      '1': 'pulse_delay_std_sec',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'pulseDelayStdSec',
      '17': true
    },
    {
      '1': 'scr_cardiac_association_count',
      '3': 7,
      '4': 1,
      '5': 4,
      '10': 'scrCardiacAssociationCount'
    },
  ],
  '8': [
    {'1': '_rsa_amplitude_bpm'},
    {'1': '_rsa_amplitude_rr_sec'},
    {'1': '_cardiac_respiratory_concentration'},
    {'1': '_cardiac_respiratory_mean_phase'},
    {'1': '_mean_pulse_delay_sec'},
    {'1': '_pulse_delay_std_sec'},
  ],
};

/// Descriptor for `CouplingFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List couplingFeaturesDescriptor = $convert.base64Decode(
    'ChBDb3VwbGluZ0ZlYXR1cmVzEi8KEXJzYV9hbXBsaXR1ZGVfYnBtGAEgASgBSABSD3JzYUFtcG'
    'xpdHVkZUJwbYgBARI0ChRyc2FfYW1wbGl0dWRlX3JyX3NlYxgCIAEoAUgBUhFyc2FBbXBsaXR1'
    'ZGVSclNlY4gBARJPCiFjYXJkaWFjX3Jlc3BpcmF0b3J5X2NvbmNlbnRyYXRpb24YAyABKAFIAl'
    'IfY2FyZGlhY1Jlc3BpcmF0b3J5Q29uY2VudHJhdGlvbogBARJICh5jYXJkaWFjX3Jlc3BpcmF0'
    'b3J5X21lYW5fcGhhc2UYBCABKAFIA1IbY2FyZGlhY1Jlc3BpcmF0b3J5TWVhblBoYXNliAEBEj'
    'QKFG1lYW5fcHVsc2VfZGVsYXlfc2VjGAUgASgBSARSEW1lYW5QdWxzZURlbGF5U2VjiAEBEjIK'
    'E3B1bHNlX2RlbGF5X3N0ZF9zZWMYBiABKAFIBVIQcHVsc2VEZWxheVN0ZFNlY4gBARJBCh1zY3'
    'JfY2FyZGlhY19hc3NvY2lhdGlvbl9jb3VudBgHIAEoBFIac2NyQ2FyZGlhY0Fzc29jaWF0aW9u'
    'Q291bnRCFAoSX3JzYV9hbXBsaXR1ZGVfYnBtQhcKFV9yc2FfYW1wbGl0dWRlX3JyX3NlY0IkCi'
    'JfY2FyZGlhY19yZXNwaXJhdG9yeV9jb25jZW50cmF0aW9uQiEKH19jYXJkaWFjX3Jlc3BpcmF0'
    'b3J5X21lYW5fcGhhc2VCFwoVX21lYW5fcHVsc2VfZGVsYXlfc2VjQhYKFF9wdWxzZV9kZWxheV'
    '9zdGRfc2Vj');

@$core.Deprecated('Use featureCoverageDescriptor instead')
const FeatureCoverage$json = {
  '1': 'FeatureCoverage',
  '2': [
    {'1': 'overall', '3': 1, '4': 1, '5': 1, '10': 'overall'},
    {'1': 'ecg', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'ecg', '17': true},
    {'1': 'ppg', '3': 3, '4': 1, '5': 1, '9': 1, '10': 'ppg', '17': true},
    {'1': 'eda', '3': 4, '4': 1, '5': 1, '9': 2, '10': 'eda', '17': true},
    {'1': 'rsp', '3': 5, '4': 1, '5': 1, '9': 3, '10': 'rsp', '17': true},
  ],
  '8': [
    {'1': '_ecg'},
    {'1': '_ppg'},
    {'1': '_eda'},
    {'1': '_rsp'},
  ],
};

/// Descriptor for `FeatureCoverage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureCoverageDescriptor = $convert.base64Decode(
    'Cg9GZWF0dXJlQ292ZXJhZ2USGAoHb3ZlcmFsbBgBIAEoAVIHb3ZlcmFsbBIVCgNlY2cYAiABKA'
    'FIAFIDZWNniAEBEhUKA3BwZxgDIAEoAUgBUgNwcGeIAQESFQoDZWRhGAQgASgBSAJSA2VkYYgB'
    'ARIVCgNyc3AYBSABKAFIA1IDcnNwiAEBQgYKBF9lY2dCBgoEX3BwZ0IGCgRfZWRhQgYKBF9yc3'
    'A=');

@$core.Deprecated('Use featureQualityDescriptor instead')
const FeatureQuality$json = {
  '1': 'FeatureQuality',
  '2': [
    {'1': 'coverage', '3': 1, '4': 1, '5': 1, '10': 'coverage'},
    {
      '1': 'modality_coverage',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.FeatureCoverage',
      '10': 'modalityCoverage'
    },
    {'1': 'cardiac_valid', '3': 3, '4': 1, '5': 8, '10': 'cardiacValid'},
    {'1': 'eda_valid', '3': 4, '4': 1, '5': 8, '10': 'edaValid'},
    {
      '1': 'respiration_valid',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'respirationValid'
    },
    {'1': 'coupling_valid', '3': 6, '4': 1, '5': 8, '10': 'couplingValid'},
    {
      '1': 'usable_feature_count',
      '3': 7,
      '4': 1,
      '5': 4,
      '10': 'usableFeatureCount'
    },
    {
      '1': 'total_feature_count',
      '3': 8,
      '4': 1,
      '5': 4,
      '10': 'totalFeatureCount'
    },
    {
      '1': 'issues',
      '3': 9,
      '4': 3,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.FeatureQualityIssue',
      '10': 'issues'
    },
  ],
};

/// Descriptor for `FeatureQuality`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureQualityDescriptor = $convert.base64Decode(
    'Cg5GZWF0dXJlUXVhbGl0eRIaCghjb3ZlcmFnZRgBIAEoAVIIY292ZXJhZ2USWQoRbW9kYWxpdH'
    'lfY292ZXJhZ2UYAiABKAsyLC5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuRmVhdHVyZUNv'
    'dmVyYWdlUhBtb2RhbGl0eUNvdmVyYWdlEiMKDWNhcmRpYWNfdmFsaWQYAyABKAhSDGNhcmRpYW'
    'NWYWxpZBIbCgllZGFfdmFsaWQYBCABKAhSCGVkYVZhbGlkEisKEXJlc3BpcmF0aW9uX3ZhbGlk'
    'GAUgASgIUhByZXNwaXJhdGlvblZhbGlkEiUKDmNvdXBsaW5nX3ZhbGlkGAYgASgIUg1jb3VwbG'
    'luZ1ZhbGlkEjAKFHVzYWJsZV9mZWF0dXJlX2NvdW50GAcgASgEUhJ1c2FibGVGZWF0dXJlQ291'
    'bnQSLgoTdG90YWxfZmVhdHVyZV9jb3VudBgIIAEoBFIRdG90YWxGZWF0dXJlQ291bnQSSAoGaX'
    'NzdWVzGAkgAygOMjAuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkZlYXR1cmVRdWFsaXR5'
    'SXNzdWVSBmlzc3Vlcw==');

@$core.Deprecated('Use multimodalFeatureVectorDescriptor instead')
const MultimodalFeatureVector$json = {
  '1': 'MultimodalFeatureVector',
  '2': [
    {
      '1': 'window',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.FeatureWindow',
      '10': 'window'
    },
    {
      '1': 'cardiac',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CardiacFeatures',
      '10': 'cardiac'
    },
    {
      '1': 'eda',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.EdaFeatures',
      '10': 'eda'
    },
    {
      '1': 'respiration',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RespirationFeatures',
      '10': 'respiration'
    },
    {
      '1': 'coupling',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CouplingFeatures',
      '10': 'coupling'
    },
    {
      '1': 'quality',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.FeatureQuality',
      '10': 'quality'
    },
    {
      '1': 'metadata',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `MultimodalFeatureVector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multimodalFeatureVectorDescriptor = $convert.base64Decode(
    'ChdNdWx0aW1vZGFsRmVhdHVyZVZlY3RvchJCCgZ3aW5kb3cYASABKAsyKi5pbnZpc2libGVfaW'
    'xsbmVzcy5zZW5zb3IudjEuRmVhdHVyZVdpbmRvd1IGd2luZG93EkYKB2NhcmRpYWMYAiABKAsy'
    'LC5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuQ2FyZGlhY0ZlYXR1cmVzUgdjYXJkaWFjEj'
    'oKA2VkYRgDIAEoCzIoLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5FZGFGZWF0dXJlc1ID'
    'ZWRhElIKC3Jlc3BpcmF0aW9uGAQgASgLMjAuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLl'
    'Jlc3BpcmF0aW9uRmVhdHVyZXNSC3Jlc3BpcmF0aW9uEkkKCGNvdXBsaW5nGAUgASgLMi0uaW52'
    'aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkNvdXBsaW5nRmVhdHVyZXNSCGNvdXBsaW5nEkUKB3'
    'F1YWxpdHkYBiABKAsyKy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuRmVhdHVyZVF1YWxp'
    'dHlSB3F1YWxpdHkSRwoIbWV0YWRhdGEYByABKAsyKy5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3'
    'IudjEuRGV2aWNlTWV0YWRhdGFSCG1ldGFkYXRh');

@$core.Deprecated('Use cardiacStateDescriptor instead')
const CardiacState$json = {
  '1': 'CardiacState',
  '2': [
    {
      '1': 'variability_index',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'variabilityIndex',
      '17': true
    },
    {
      '1': 'heart_rate_index',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'heartRateIndex',
      '17': true
    },
    {
      '1': 'recovery_evidence',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'recoveryEvidence',
      '17': true
    },
    {'1': 'beat_count', '3': 4, '4': 1, '5': 4, '10': 'beatCount'},
  ],
  '8': [
    {'1': '_variability_index'},
    {'1': '_heart_rate_index'},
    {'1': '_recovery_evidence'},
  ],
};

/// Descriptor for `CardiacState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardiacStateDescriptor = $convert.base64Decode(
    'CgxDYXJkaWFjU3RhdGUSMAoRdmFyaWFiaWxpdHlfaW5kZXgYASABKAFIAFIQdmFyaWFiaWxpdH'
    'lJbmRleIgBARItChBoZWFydF9yYXRlX2luZGV4GAIgASgBSAFSDmhlYXJ0UmF0ZUluZGV4iAEB'
    'EjAKEXJlY292ZXJ5X2V2aWRlbmNlGAMgASgBSAJSEHJlY292ZXJ5RXZpZGVuY2WIAQESHQoKYm'
    'VhdF9jb3VudBgEIAEoBFIJYmVhdENvdW50QhQKEl92YXJpYWJpbGl0eV9pbmRleEITChFfaGVh'
    'cnRfcmF0ZV9pbmRleEIUChJfcmVjb3ZlcnlfZXZpZGVuY2U=');

@$core.Deprecated('Use electrodermalStateDescriptor instead')
const ElectrodermalState$json = {
  '1': 'ElectrodermalState',
  '2': [
    {
      '1': 'tonic_level_index',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'tonicLevelIndex',
      '17': true
    },
    {
      '1': 'phasic_activation_index',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'phasicActivationIndex',
      '17': true
    },
    {
      '1': 'scr_rate_index',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'scrRateIndex',
      '17': true
    },
    {'1': 'scr_count', '3': 4, '4': 1, '5': 4, '10': 'scrCount'},
  ],
  '8': [
    {'1': '_tonic_level_index'},
    {'1': '_phasic_activation_index'},
    {'1': '_scr_rate_index'},
  ],
};

/// Descriptor for `ElectrodermalState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List electrodermalStateDescriptor = $convert.base64Decode(
    'ChJFbGVjdHJvZGVybWFsU3RhdGUSLwoRdG9uaWNfbGV2ZWxfaW5kZXgYASABKAFIAFIPdG9uaW'
    'NMZXZlbEluZGV4iAEBEjsKF3BoYXNpY19hY3RpdmF0aW9uX2luZGV4GAIgASgBSAFSFXBoYXNp'
    'Y0FjdGl2YXRpb25JbmRleIgBARIpCg5zY3JfcmF0ZV9pbmRleBgDIAEoAUgCUgxzY3JSYXRlSW'
    '5kZXiIAQESGwoJc2NyX2NvdW50GAQgASgEUghzY3JDb3VudEIUChJfdG9uaWNfbGV2ZWxfaW5k'
    'ZXhCGgoYX3BoYXNpY19hY3RpdmF0aW9uX2luZGV4QhEKD19zY3JfcmF0ZV9pbmRleA==');

@$core.Deprecated('Use respiratoryStateDescriptor instead')
const RespiratoryState$json = {
  '1': 'RespiratoryState',
  '2': [
    {
      '1': 'rate_index',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'rateIndex',
      '17': true
    },
    {
      '1': 'amplitude_index',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'amplitudeIndex',
      '17': true
    },
    {
      '1': 'regularity_index',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'regularityIndex',
      '17': true
    },
    {'1': 'cycle_count', '3': 4, '4': 1, '5': 4, '10': 'cycleCount'},
  ],
  '8': [
    {'1': '_rate_index'},
    {'1': '_amplitude_index'},
    {'1': '_regularity_index'},
  ],
};

/// Descriptor for `RespiratoryState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respiratoryStateDescriptor = $convert.base64Decode(
    'ChBSZXNwaXJhdG9yeVN0YXRlEiIKCnJhdGVfaW5kZXgYASABKAFIAFIJcmF0ZUluZGV4iAEBEi'
    'wKD2FtcGxpdHVkZV9pbmRleBgCIAEoAUgBUg5hbXBsaXR1ZGVJbmRleIgBARIuChByZWd1bGFy'
    'aXR5X2luZGV4GAMgASgBSAJSD3JlZ3VsYXJpdHlJbmRleIgBARIfCgtjeWNsZV9jb3VudBgEIA'
    'EoBFIKY3ljbGVDb3VudEINCgtfcmF0ZV9pbmRleEISChBfYW1wbGl0dWRlX2luZGV4QhMKEV9y'
    'ZWd1bGFyaXR5X2luZGV4');

@$core.Deprecated('Use couplingStateDescriptor instead')
const CouplingState$json = {
  '1': 'CouplingState',
  '2': [
    {
      '1': 'resphr_coupling_index',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'resphrCouplingIndex',
      '17': true
    },
    {
      '1': 'phase_coupling_index',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'phaseCouplingIndex',
      '17': true
    },
    {
      '1': 'pulse_delay_index',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'pulseDelayIndex',
      '17': true
    },
    {
      '1': 'association_count',
      '3': 4,
      '4': 1,
      '5': 4,
      '10': 'associationCount'
    },
  ],
  '8': [
    {'1': '_resphr_coupling_index'},
    {'1': '_phase_coupling_index'},
    {'1': '_pulse_delay_index'},
  ],
};

/// Descriptor for `CouplingState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List couplingStateDescriptor = $convert.base64Decode(
    'Cg1Db3VwbGluZ1N0YXRlEjcKFXJlc3Bocl9jb3VwbGluZ19pbmRleBgBIAEoAUgAUhNyZXNwaH'
    'JDb3VwbGluZ0luZGV4iAEBEjUKFHBoYXNlX2NvdXBsaW5nX2luZGV4GAIgASgBSAFSEnBoYXNl'
    'Q291cGxpbmdJbmRleIgBARIvChFwdWxzZV9kZWxheV9pbmRleBgDIAEoAUgCUg9wdWxzZURlbG'
    'F5SW5kZXiIAQESKwoRYXNzb2NpYXRpb25fY291bnQYBCABKARSEGFzc29jaWF0aW9uQ291bnRC'
    'GAoWX3Jlc3Bocl9jb3VwbGluZ19pbmRleEIXChVfcGhhc2VfY291cGxpbmdfaW5kZXhCFAoSX3'
    'B1bHNlX2RlbGF5X2luZGV4');

@$core.Deprecated('Use stateConfidenceDescriptor instead')
const StateConfidence$json = {
  '1': 'StateConfidence',
  '2': [
    {'1': 'overall', '3': 1, '4': 1, '5': 1, '10': 'overall'},
    {
      '1': 'cardiac',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'cardiac',
      '17': true
    },
    {
      '1': 'electrodermal',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'electrodermal',
      '17': true
    },
    {
      '1': 'respiratory',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'respiratory',
      '17': true
    },
    {
      '1': 'coupling',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'coupling',
      '17': true
    },
  ],
  '8': [
    {'1': '_cardiac'},
    {'1': '_electrodermal'},
    {'1': '_respiratory'},
    {'1': '_coupling'},
  ],
};

/// Descriptor for `StateConfidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateConfidenceDescriptor = $convert.base64Decode(
    'Cg9TdGF0ZUNvbmZpZGVuY2USGAoHb3ZlcmFsbBgBIAEoAVIHb3ZlcmFsbBIdCgdjYXJkaWFjGA'
    'IgASgBSABSB2NhcmRpYWOIAQESKQoNZWxlY3Ryb2Rlcm1hbBgDIAEoAUgBUg1lbGVjdHJvZGVy'
    'bWFsiAEBEiUKC3Jlc3BpcmF0b3J5GAQgASgBSAJSC3Jlc3BpcmF0b3J5iAEBEh8KCGNvdXBsaW'
    '5nGAUgASgBSANSCGNvdXBsaW5niAEBQgoKCF9jYXJkaWFjQhAKDl9lbGVjdHJvZGVybWFsQg4K'
    'DF9yZXNwaXJhdG9yeUILCglfY291cGxpbmc=');

@$core.Deprecated('Use autonomicStateDescriptor instead')
const AutonomicState$json = {
  '1': 'AutonomicState',
  '2': [
    {'1': 'timestamp_sec', '3': 1, '4': 1, '5': 1, '10': 'timestampSec'},
    {'1': 'duration_sec', '3': 2, '4': 1, '5': 1, '10': 'durationSec'},
    {
      '1': 'cardiac',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CardiacState',
      '10': 'cardiac'
    },
    {
      '1': 'electrodermal',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.ElectrodermalState',
      '10': 'electrodermal'
    },
    {
      '1': 'respiratory',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RespiratoryState',
      '10': 'respiratory'
    },
    {
      '1': 'coupling',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CouplingState',
      '10': 'coupling'
    },
    {
      '1': 'activation_score',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'activationScore',
      '17': true
    },
    {
      '1': 'regulation_score',
      '3': 8,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'regulationScore',
      '17': true
    },
    {
      '1': 'confidence',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.StateConfidence',
      '10': 'confidence'
    },
    {
      '1': 'metadata',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
  '8': [
    {'1': '_activation_score'},
    {'1': '_regulation_score'},
  ],
};

/// Descriptor for `AutonomicState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autonomicStateDescriptor = $convert.base64Decode(
    'Cg5BdXRvbm9taWNTdGF0ZRIjCg10aW1lc3RhbXBfc2VjGAEgASgBUgx0aW1lc3RhbXBTZWMSIQ'
    'oMZHVyYXRpb25fc2VjGAIgASgBUgtkdXJhdGlvblNlYxJDCgdjYXJkaWFjGAMgASgLMikuaW52'
    'aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkNhcmRpYWNTdGF0ZVIHY2FyZGlhYxJVCg1lbGVjdH'
    'JvZGVybWFsGAQgASgLMi8uaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkVsZWN0cm9kZXJt'
    'YWxTdGF0ZVINZWxlY3Ryb2Rlcm1hbBJPCgtyZXNwaXJhdG9yeRgFIAEoCzItLmludmlzaWJsZV'
    '9pbGxuZXNzLnNlbnNvci52MS5SZXNwaXJhdG9yeVN0YXRlUgtyZXNwaXJhdG9yeRJGCghjb3Vw'
    'bGluZxgGIAEoCzIqLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5Db3VwbGluZ1N0YXRlUg'
    'hjb3VwbGluZxIuChBhY3RpdmF0aW9uX3Njb3JlGAcgASgBSABSD2FjdGl2YXRpb25TY29yZYgB'
    'ARIuChByZWd1bGF0aW9uX3Njb3JlGAggASgBSAFSD3JlZ3VsYXRpb25TY29yZYgBARJMCgpjb2'
    '5maWRlbmNlGAkgASgLMiwuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlN0YXRlQ29uZmlk'
    'ZW5jZVIKY29uZmlkZW5jZRJHCghtZXRhZGF0YRgKIAEoCzIrLmludmlzaWJsZV9pbGxuZXNzLn'
    'NlbnNvci52MS5EZXZpY2VNZXRhZGF0YVIIbWV0YWRhdGFCEwoRX2FjdGl2YXRpb25fc2NvcmVC'
    'EwoRX3JlZ3VsYXRpb25fc2NvcmU=');

@$core.Deprecated('Use roiDescriptor instead')
const Roi$json = {
  '1': 'Roi',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 13, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 13, '10': 'y'},
    {'1': 'width', '3': 3, '4': 1, '5': 13, '10': 'width'},
    {'1': 'height', '3': 4, '4': 1, '5': 13, '10': 'height'},
  ],
};

/// Descriptor for `Roi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roiDescriptor = $convert.base64Decode(
    'CgNSb2kSDAoBeBgBIAEoDVIBeBIMCgF5GAIgASgNUgF5EhQKBXdpZHRoGAMgASgNUgV3aWR0aB'
    'IWCgZoZWlnaHQYBCABKA1SBmhlaWdodA==');

@$core.Deprecated('Use videoMetadataDescriptor instead')
const VideoMetadata$json = {
  '1': 'VideoMetadata',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 13, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
    {'1': 'fps', '3': 3, '4': 1, '5': 1, '10': 'fps'},
    {'1': 'total_frames', '3': 4, '4': 1, '5': 4, '10': 'totalFrames'},
    {'1': 'duration_sec', '3': 5, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `VideoMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoMetadataDescriptor = $convert.base64Decode(
    'Cg1WaWRlb01ldGFkYXRhEhQKBXdpZHRoGAEgASgNUgV3aWR0aBIWCgZoZWlnaHQYAiABKA1SBm'
    'hlaWdodBIQCgNmcHMYAyABKAFSA2ZwcxIhCgx0b3RhbF9mcmFtZXMYBCABKARSC3RvdGFsRnJh'
    'bWVzEiEKDGR1cmF0aW9uX3NlYxgFIAEoAVILZHVyYXRpb25TZWM=');

@$core.Deprecated('Use rppgSegmentQualityDescriptor instead')
const RppgSegmentQuality$json = {
  '1': 'RppgSegmentQuality',
  '2': [
    {'1': 'start_sec', '3': 1, '4': 1, '5': 1, '10': 'startSec'},
    {'1': 'end_sec', '3': 2, '4': 1, '5': 1, '10': 'endSec'},
    {'1': 'overall', '3': 3, '4': 1, '5': 1, '10': 'overall'},
    {'1': 'roi_quality', '3': 4, '4': 1, '5': 1, '10': 'roiQuality'},
    {'1': 'motion_quality', '3': 5, '4': 1, '5': 1, '10': 'motionQuality'},
    {
      '1': 'illumination_quality',
      '3': 6,
      '4': 1,
      '5': 1,
      '10': 'illuminationQuality'
    },
    {'1': 'signal_quality', '3': 7, '4': 1, '5': 1, '10': 'signalQuality'},
    {'1': 'valid_fraction', '3': 8, '4': 1, '5': 1, '10': 'validFraction'},
  ],
};

/// Descriptor for `RppgSegmentQuality`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rppgSegmentQualityDescriptor = $convert.base64Decode(
    'ChJScHBnU2VnbWVudFF1YWxpdHkSGwoJc3RhcnRfc2VjGAEgASgBUghzdGFydFNlYxIXCgdlbm'
    'Rfc2VjGAIgASgBUgZlbmRTZWMSGAoHb3ZlcmFsbBgDIAEoAVIHb3ZlcmFsbBIfCgtyb2lfcXVh'
    'bGl0eRgEIAEoAVIKcm9pUXVhbGl0eRIlCg5tb3Rpb25fcXVhbGl0eRgFIAEoAVINbW90aW9uUX'
    'VhbGl0eRIxChRpbGx1bWluYXRpb25fcXVhbGl0eRgGIAEoAVITaWxsdW1pbmF0aW9uUXVhbGl0'
    'eRIlCg5zaWduYWxfcXVhbGl0eRgHIAEoAVINc2lnbmFsUXVhbGl0eRIlCg52YWxpZF9mcmFjdG'
    'lvbhgIIAEoAVINdmFsaWRGcmFjdGlvbg==');

@$core.Deprecated('Use rppgQualitySummaryDescriptor instead')
const RppgQualitySummary$json = {
  '1': 'RppgQualitySummary',
  '2': [
    {'1': 'overall', '3': 1, '4': 1, '5': 1, '10': 'overall'},
    {'1': 'valid_fraction', '3': 2, '4': 1, '5': 1, '10': 'validFraction'},
    {
      '1': 'segments',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RppgSegmentQuality',
      '10': 'segments'
    },
  ],
};

/// Descriptor for `RppgQualitySummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rppgQualitySummaryDescriptor = $convert.base64Decode(
    'ChJScHBnUXVhbGl0eVN1bW1hcnkSGAoHb3ZlcmFsbBgBIAEoAVIHb3ZlcmFsbBIlCg52YWxpZF'
    '9mcmFjdGlvbhgCIAEoAVINdmFsaWRGcmFjdGlvbhJLCghzZWdtZW50cxgDIAMoCzIvLmludmlz'
    'aWJsZV9pbGxuZXNzLnNlbnNvci52MS5ScHBnU2VnbWVudFF1YWxpdHlSCHNlZ21lbnRz');

@$core.Deprecated('Use rppgSegmentDescriptor instead')
const RppgSegment$json = {
  '1': 'RppgSegment',
  '2': [
    {'1': 'start_sec', '3': 1, '4': 1, '5': 1, '10': 'startSec'},
    {'1': 'end_sec', '3': 2, '4': 1, '5': 1, '10': 'endSec'},
    {'1': 'sampling_rate_hz', '3': 3, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'samples', '3': 4, '4': 3, '5': 1, '10': 'samples'},
  ],
};

/// Descriptor for `RppgSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rppgSegmentDescriptor = $convert.base64Decode(
    'CgtScHBnU2VnbWVudBIbCglzdGFydF9zZWMYASABKAFSCHN0YXJ0U2VjEhcKB2VuZF9zZWMYAi'
    'ABKAFSBmVuZFNlYxIoChBzYW1wbGluZ19yYXRlX2h6GAMgASgBUg5zYW1wbGluZ1JhdGVIehIY'
    'CgdzYW1wbGVzGAQgAygBUgdzYW1wbGVz');

@$core.Deprecated('Use rppgSignalDescriptor instead')
const RppgSignal$json = {
  '1': 'RppgSignal',
  '2': [
    {'1': 'start_sec', '3': 1, '4': 1, '5': 1, '10': 'startSec'},
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'pulse_samples', '3': 3, '4': 3, '5': 1, '10': 'pulseSamples'},
    {
      '1': 'valid_segments',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RppgSegment',
      '10': 'validSegments'
    },
    {
      '1': 'quality',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RppgQualitySummary',
      '10': 'quality'
    },
    {
      '1': 'metadata',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
    {
      '1': 'polarity',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SignalPolarity',
      '10': 'polarity'
    },
    {
      '1': 'algorithm',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.RppgAlgorithmId',
      '10': 'algorithm'
    },
    {'1': 'timestamps_sec', '3': 9, '4': 3, '5': 1, '10': 'timestampsSec'},
    {
      '1': 'segment_qualities',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RppgSegmentQuality',
      '10': 'segmentQualities'
    },
  ],
};

/// Descriptor for `RppgSignal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rppgSignalDescriptor = $convert.base64Decode(
    'CgpScHBnU2lnbmFsEhsKCXN0YXJ0X3NlYxgBIAEoAVIIc3RhcnRTZWMSKAoQc2FtcGxpbmdfcm'
    'F0ZV9oehgCIAEoAVIOc2FtcGxpbmdSYXRlSHoSIwoNcHVsc2Vfc2FtcGxlcxgDIAMoAVIMcHVs'
    'c2VTYW1wbGVzEk8KDnZhbGlkX3NlZ21lbnRzGAQgAygLMiguaW52aXNpYmxlX2lsbG5lc3Muc2'
    'Vuc29yLnYxLlJwcGdTZWdtZW50Ug12YWxpZFNlZ21lbnRzEkkKB3F1YWxpdHkYBSABKAsyLy5p'
    'bnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuUnBwZ1F1YWxpdHlTdW1tYXJ5UgdxdWFsaXR5Ek'
    'cKCG1ldGFkYXRhGAYgASgLMisuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLkRldmljZU1l'
    'dGFkYXRhUghtZXRhZGF0YRJHCghwb2xhcml0eRgHIAEoDjIrLmludmlzaWJsZV9pbGxuZXNzLn'
    'NlbnNvci52MS5TaWduYWxQb2xhcml0eVIIcG9sYXJpdHkSSgoJYWxnb3JpdGhtGAggASgOMiwu'
    'aW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlJwcGdBbGdvcml0aG1JZFIJYWxnb3JpdGhtEi'
    'UKDnRpbWVzdGFtcHNfc2VjGAkgAygBUg10aW1lc3RhbXBzU2VjElwKEXNlZ21lbnRfcXVhbGl0'
    'aWVzGAogAygLMi8uaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlJwcGdTZWdtZW50UXVhbG'
    'l0eVIQc2VnbWVudFF1YWxpdGllcw==');

@$core.Deprecated('Use bvpWaveformDescriptor instead')
const BvpWaveform$json = {
  '1': 'BvpWaveform',
  '2': [
    {'1': 'start_sec', '3': 1, '4': 1, '5': 1, '10': 'startSec'},
    {'1': 'sampling_rate_hz', '3': 2, '4': 1, '5': 1, '10': 'samplingRateHz'},
    {'1': 'pulse_samples', '3': 3, '4': 3, '5': 1, '10': 'pulseSamples'},
    {
      '1': 'polarity',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.invisible_illness.sensor.v1.SignalPolarity',
      '10': 'polarity'
    },
    {
      '1': 'metadata',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `BvpWaveform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bvpWaveformDescriptor = $convert.base64Decode(
    'CgtCdnBXYXZlZm9ybRIbCglzdGFydF9zZWMYASABKAFSCHN0YXJ0U2VjEigKEHNhbXBsaW5nX3'
    'JhdGVfaHoYAiABKAFSDnNhbXBsaW5nUmF0ZUh6EiMKDXB1bHNlX3NhbXBsZXMYAyADKAFSDHB1'
    'bHNlU2FtcGxlcxJHCghwb2xhcml0eRgEIAEoDjIrLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci'
    '52MS5TaWduYWxQb2xhcml0eVIIcG9sYXJpdHkSRwoIbWV0YWRhdGEYBSABKAsyKy5pbnZpc2li'
    'bGVfaWxsbmVzcy5zZW5zb3IudjEuRGV2aWNlTWV0YWRhdGFSCG1ldGFkYXRh');

@$core.Deprecated('Use sensorDataContainerDescriptor instead')
const SensorDataContainer$json = {
  '1': 'SensorDataContainer',
  '2': [
    {
      '1': 'metadata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.DeviceMetadata',
      '10': 'metadata'
    },
    {
      '1': 'packet_timestamp',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'packetTimestamp'
    },
    {
      '1': 'raw_signal',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.ContinuousSignalBatch',
      '9': 0,
      '10': 'rawSignal'
    },
    {
      '1': 'multi_channel_signal',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.MultiChannelSignalBatch',
      '9': 0,
      '10': 'multiChannelSignal'
    },
    {
      '1': 'single_measurement',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.SinglePointMeasurement',
      '9': 0,
      '10': 'singleMeasurement'
    },
    {
      '1': 'blood_pressure',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.BloodPressureMeasurement',
      '9': 0,
      '10': 'bloodPressure'
    },
    {
      '1': 'cardiac_peaks',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.CardiacPeakBatch',
      '9': 0,
      '10': 'cardiacPeaks'
    },
    {
      '1': 'scr_events',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.ScrEventBatch',
      '9': 0,
      '10': 'scrEvents'
    },
    {
      '1': 'respiration_cycles',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RespirationCycleBatch',
      '9': 0,
      '10': 'respirationCycles'
    },
    {
      '1': 'pulse_timings',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.PulseTimingBatch',
      '9': 0,
      '10': 'pulseTimings'
    },
    {
      '1': 'rsa_results',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RsaBatch',
      '9': 0,
      '10': 'rsaResults'
    },
    {
      '1': 'feature_vector',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.MultimodalFeatureVector',
      '9': 0,
      '10': 'featureVector'
    },
    {
      '1': 'autonomic_state',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.AutonomicState',
      '9': 0,
      '10': 'autonomicState'
    },
    {
      '1': 'rppg_signal',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.RppgSignal',
      '9': 0,
      '10': 'rppgSignal'
    },
    {
      '1': 'bvp_waveform',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.invisible_illness.sensor.v1.BvpWaveform',
      '9': 0,
      '10': 'bvpWaveform'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `SensorDataContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorDataContainerDescriptor = $convert.base64Decode(
    'ChNTZW5zb3JEYXRhQ29udGFpbmVyEkcKCG1ldGFkYXRhGAEgASgLMisuaW52aXNpYmxlX2lsbG'
    '5lc3Muc2Vuc29yLnYxLkRldmljZU1ldGFkYXRhUghtZXRhZGF0YRJFChBwYWNrZXRfdGltZXN0'
    'YW1wGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIPcGFja2V0VGltZXN0YW1wEl'
    'MKCnJhd19zaWduYWwYCiABKAsyMi5pbnZpc2libGVfaWxsbmVzcy5zZW5zb3IudjEuQ29udGlu'
    'dW91c1NpZ25hbEJhdGNoSABSCXJhd1NpZ25hbBJoChRtdWx0aV9jaGFubmVsX3NpZ25hbBgLIA'
    'EoCzI0LmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5NdWx0aUNoYW5uZWxTaWduYWxCYXRj'
    'aEgAUhJtdWx0aUNoYW5uZWxTaWduYWwSZAoSc2luZ2xlX21lYXN1cmVtZW50GAwgASgLMjMuaW'
    '52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlNpbmdsZVBvaW50TWVhc3VyZW1lbnRIAFIRc2lu'
    'Z2xlTWVhc3VyZW1lbnQSXgoOYmxvb2RfcHJlc3N1cmUYDSABKAsyNS5pbnZpc2libGVfaWxsbm'
    'Vzcy5zZW5zb3IudjEuQmxvb2RQcmVzc3VyZU1lYXN1cmVtZW50SABSDWJsb29kUHJlc3N1cmUS'
    'VAoNY2FyZGlhY19wZWFrcxgOIAEoCzItLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5DYX'
    'JkaWFjUGVha0JhdGNoSABSDGNhcmRpYWNQZWFrcxJLCgpzY3JfZXZlbnRzGA8gASgLMiouaW52'
    'aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlNjckV2ZW50QmF0Y2hIAFIJc2NyRXZlbnRzEmMKEn'
    'Jlc3BpcmF0aW9uX2N5Y2xlcxgQIAEoCzIyLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5S'
    'ZXNwaXJhdGlvbkN5Y2xlQmF0Y2hIAFIRcmVzcGlyYXRpb25DeWNsZXMSVAoNcHVsc2VfdGltaW'
    '5ncxgRIAEoCzItLmludmlzaWJsZV9pbGxuZXNzLnNlbnNvci52MS5QdWxzZVRpbWluZ0JhdGNo'
    'SABSDHB1bHNlVGltaW5ncxJICgtyc2FfcmVzdWx0cxgSIAEoCzIlLmludmlzaWJsZV9pbGxuZX'
    'NzLnNlbnNvci52MS5Sc2FCYXRjaEgAUgpyc2FSZXN1bHRzEl0KDmZlYXR1cmVfdmVjdG9yGBMg'
    'ASgLMjQuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLk11bHRpbW9kYWxGZWF0dXJlVmVjdG'
    '9ySABSDWZlYXR1cmVWZWN0b3ISVgoPYXV0b25vbWljX3N0YXRlGBQgASgLMisuaW52aXNpYmxl'
    'X2lsbG5lc3Muc2Vuc29yLnYxLkF1dG9ub21pY1N0YXRlSABSDmF1dG9ub21pY1N0YXRlEkoKC3'
    'JwcGdfc2lnbmFsGBUgASgLMicuaW52aXNpYmxlX2lsbG5lc3Muc2Vuc29yLnYxLlJwcGdTaWdu'
    'YWxIAFIKcnBwZ1NpZ25hbBJNCgxidnBfd2F2ZWZvcm0YFiABKAsyKC5pbnZpc2libGVfaWxsbm'
    'Vzcy5zZW5zb3IudjEuQnZwV2F2ZWZvcm1IAFILYnZwV2F2ZWZvcm1CCQoHcGF5bG9hZA==');
