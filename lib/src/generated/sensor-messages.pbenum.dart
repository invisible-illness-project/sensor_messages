// This is a generated file - do not edit.
//
// Generated from sensor-messages.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// / Primary sensor modalities across Invisible Illness Project hardware & processing stack.
class SensorModality extends $pb.ProtobufEnum {
  static const SensorModality SENSOR_MODALITY_UNSPECIFIED =
      SensorModality._(0, _omitEnumNames ? '' : 'SENSOR_MODALITY_UNSPECIFIED');
  static const SensorModality SENSOR_MODALITY_ECG =
      SensorModality._(1, _omitEnumNames ? '' : 'SENSOR_MODALITY_ECG');
  static const SensorModality SENSOR_MODALITY_PPG =
      SensorModality._(2, _omitEnumNames ? '' : 'SENSOR_MODALITY_PPG');
  static const SensorModality SENSOR_MODALITY_EDA =
      SensorModality._(3, _omitEnumNames ? '' : 'SENSOR_MODALITY_EDA');
  static const SensorModality SENSOR_MODALITY_RSP =
      SensorModality._(4, _omitEnumNames ? '' : 'SENSOR_MODALITY_RSP');
  static const SensorModality SENSOR_MODALITY_ACCELEROMETER = SensorModality._(
      5, _omitEnumNames ? '' : 'SENSOR_MODALITY_ACCELEROMETER');
  static const SensorModality SENSOR_MODALITY_GYROSCOPE =
      SensorModality._(6, _omitEnumNames ? '' : 'SENSOR_MODALITY_GYROSCOPE');
  static const SensorModality SENSOR_MODALITY_TEMPERATURE =
      SensorModality._(7, _omitEnumNames ? '' : 'SENSOR_MODALITY_TEMPERATURE');
  static const SensorModality SENSOR_MODALITY_BLOOD_PRESSURE = SensorModality._(
      8, _omitEnumNames ? '' : 'SENSOR_MODALITY_BLOOD_PRESSURE');
  static const SensorModality SENSOR_MODALITY_BVP =
      SensorModality._(9, _omitEnumNames ? '' : 'SENSOR_MODALITY_BVP');
  static const SensorModality SENSOR_MODALITY_EMG =
      SensorModality._(10, _omitEnumNames ? '' : 'SENSOR_MODALITY_EMG');
  static const SensorModality SENSOR_MODALITY_RPPG =
      SensorModality._(11, _omitEnumNames ? '' : 'SENSOR_MODALITY_RPPG');

  static const $core.List<SensorModality> values = <SensorModality>[
    SENSOR_MODALITY_UNSPECIFIED,
    SENSOR_MODALITY_ECG,
    SENSOR_MODALITY_PPG,
    SENSOR_MODALITY_EDA,
    SENSOR_MODALITY_RSP,
    SENSOR_MODALITY_ACCELEROMETER,
    SENSOR_MODALITY_GYROSCOPE,
    SENSOR_MODALITY_TEMPERATURE,
    SENSOR_MODALITY_BLOOD_PRESSURE,
    SENSOR_MODALITY_BVP,
    SENSOR_MODALITY_EMG,
    SENSOR_MODALITY_RPPG,
  ];

  static final $core.List<SensorModality?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static SensorModality? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SensorModality._(super.value, super.name);
}

/// / Physical units for raw signals and derived features.
class PhysicalUnit extends $pb.ProtobufEnum {
  static const PhysicalUnit PHYSICAL_UNIT_UNSPECIFIED =
      PhysicalUnit._(0, _omitEnumNames ? '' : 'PHYSICAL_UNIT_UNSPECIFIED');
  static const PhysicalUnit PHYSICAL_UNIT_MILLIVOLTS =
      PhysicalUnit._(1, _omitEnumNames ? '' : 'PHYSICAL_UNIT_MILLIVOLTS');
  static const PhysicalUnit PHYSICAL_UNIT_MICROSIEMENS =
      PhysicalUnit._(2, _omitEnumNames ? '' : 'PHYSICAL_UNIT_MICROSIEMENS');
  static const PhysicalUnit PHYSICAL_UNIT_CELSIUS =
      PhysicalUnit._(3, _omitEnumNames ? '' : 'PHYSICAL_UNIT_CELSIUS');
  static const PhysicalUnit PHYSICAL_UNIT_BPM =
      PhysicalUnit._(4, _omitEnumNames ? '' : 'PHYSICAL_UNIT_BPM');
  static const PhysicalUnit PHYSICAL_UNIT_MILLISECONDS =
      PhysicalUnit._(5, _omitEnumNames ? '' : 'PHYSICAL_UNIT_MILLISECONDS');
  static const PhysicalUnit PHYSICAL_UNIT_SECONDS =
      PhysicalUnit._(6, _omitEnumNames ? '' : 'PHYSICAL_UNIT_SECONDS');
  static const PhysicalUnit PHYSICAL_UNIT_G_FORCE =
      PhysicalUnit._(7, _omitEnumNames ? '' : 'PHYSICAL_UNIT_G_FORCE');
  static const PhysicalUnit PHYSICAL_UNIT_METERS_PER_SEC_SQ = PhysicalUnit._(
      8, _omitEnumNames ? '' : 'PHYSICAL_UNIT_METERS_PER_SEC_SQ');
  static const PhysicalUnit PHYSICAL_UNIT_MMHG =
      PhysicalUnit._(9, _omitEnumNames ? '' : 'PHYSICAL_UNIT_MMHG');
  static const PhysicalUnit PHYSICAL_UNIT_PERCENT =
      PhysicalUnit._(10, _omitEnumNames ? '' : 'PHYSICAL_UNIT_PERCENT');
  static const PhysicalUnit PHYSICAL_UNIT_RADIANS =
      PhysicalUnit._(11, _omitEnumNames ? '' : 'PHYSICAL_UNIT_RADIANS');

  static const $core.List<PhysicalUnit> values = <PhysicalUnit>[
    PHYSICAL_UNIT_UNSPECIFIED,
    PHYSICAL_UNIT_MILLIVOLTS,
    PHYSICAL_UNIT_MICROSIEMENS,
    PHYSICAL_UNIT_CELSIUS,
    PHYSICAL_UNIT_BPM,
    PHYSICAL_UNIT_MILLISECONDS,
    PHYSICAL_UNIT_SECONDS,
    PHYSICAL_UNIT_G_FORCE,
    PHYSICAL_UNIT_METERS_PER_SEC_SQ,
    PHYSICAL_UNIT_MMHG,
    PHYSICAL_UNIT_PERCENT,
    PHYSICAL_UNIT_RADIANS,
  ];

  static final $core.List<PhysicalUnit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static PhysicalUnit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PhysicalUnit._(super.value, super.name);
}

/// / High-level filter type specification matching lamina::signal::FilterSpec.
class FilterKind extends $pb.ProtobufEnum {
  static const FilterKind FILTER_KIND_UNSPECIFIED =
      FilterKind._(0, _omitEnumNames ? '' : 'FILTER_KIND_UNSPECIFIED');
  static const FilterKind FILTER_KIND_LOWPASS =
      FilterKind._(1, _omitEnumNames ? '' : 'FILTER_KIND_LOWPASS');
  static const FilterKind FILTER_KIND_HIGHPASS =
      FilterKind._(2, _omitEnumNames ? '' : 'FILTER_KIND_HIGHPASS');
  static const FilterKind FILTER_KIND_BANDPASS =
      FilterKind._(3, _omitEnumNames ? '' : 'FILTER_KIND_BANDPASS');
  static const FilterKind FILTER_KIND_NOTCH =
      FilterKind._(4, _omitEnumNames ? '' : 'FILTER_KIND_NOTCH');

  static const $core.List<FilterKind> values = <FilterKind>[
    FILTER_KIND_UNSPECIFIED,
    FILTER_KIND_LOWPASS,
    FILTER_KIND_HIGHPASS,
    FILTER_KIND_BANDPASS,
    FILTER_KIND_NOTCH,
  ];

  static final $core.List<FilterKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FilterKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FilterKind._(super.value, super.name);
}

/// / Signal polarity convention for optical surrogates and blood volume pulse (BVP) waveforms matching lamina::rppg::SignalPolarity.
class SignalPolarity extends $pb.ProtobufEnum {
  static const SignalPolarity SIGNAL_POLARITY_UNSPECIFIED =
      SignalPolarity._(0, _omitEnumNames ? '' : 'SIGNAL_POLARITY_UNSPECIFIED');
  static const SignalPolarity SIGNAL_POLARITY_NORMAL =
      SignalPolarity._(1, _omitEnumNames ? '' : 'SIGNAL_POLARITY_NORMAL');
  static const SignalPolarity SIGNAL_POLARITY_INVERTED =
      SignalPolarity._(2, _omitEnumNames ? '' : 'SIGNAL_POLARITY_INVERTED');
  static const SignalPolarity SIGNAL_POLARITY_AUTO_DETECT =
      SignalPolarity._(3, _omitEnumNames ? '' : 'SIGNAL_POLARITY_AUTO_DETECT');

  static const $core.List<SignalPolarity> values = <SignalPolarity>[
    SIGNAL_POLARITY_UNSPECIFIED,
    SIGNAL_POLARITY_NORMAL,
    SIGNAL_POLARITY_INVERTED,
    SIGNAL_POLARITY_AUTO_DETECT,
  ];

  static final $core.List<SignalPolarity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SignalPolarity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SignalPolarity._(super.value, super.name);
}

/// / Interval quality category matching lamina::hrv::IntervalQuality.
class IntervalQualityKind extends $pb.ProtobufEnum {
  static const IntervalQualityKind INTERVAL_QUALITY_UNSPECIFIED =
      IntervalQualityKind._(
          0, _omitEnumNames ? '' : 'INTERVAL_QUALITY_UNSPECIFIED');
  static const IntervalQualityKind INTERVAL_QUALITY_NORMAL_NN =
      IntervalQualityKind._(
          1, _omitEnumNames ? '' : 'INTERVAL_QUALITY_NORMAL_NN');
  static const IntervalQualityKind INTERVAL_QUALITY_ECTOPIC_RR =
      IntervalQualityKind._(
          2, _omitEnumNames ? '' : 'INTERVAL_QUALITY_ECTOPIC_RR');
  static const IntervalQualityKind INTERVAL_QUALITY_ARTIFACT_RR =
      IntervalQualityKind._(
          3, _omitEnumNames ? '' : 'INTERVAL_QUALITY_ARTIFACT_RR');
  static const IntervalQualityKind INTERVAL_QUALITY_MISSING =
      IntervalQualityKind._(
          4, _omitEnumNames ? '' : 'INTERVAL_QUALITY_MISSING');

  static const $core.List<IntervalQualityKind> values = <IntervalQualityKind>[
    INTERVAL_QUALITY_UNSPECIFIED,
    INTERVAL_QUALITY_NORMAL_NN,
    INTERVAL_QUALITY_ECTOPIC_RR,
    INTERVAL_QUALITY_ARTIFACT_RR,
    INTERVAL_QUALITY_MISSING,
  ];

  static final $core.List<IntervalQualityKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static IntervalQualityKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IntervalQualityKind._(super.value, super.name);
}

/// / Interval correction policy kind matching lamina::hrv::CorrectionPolicy.
class CorrectionPolicyKind extends $pb.ProtobufEnum {
  static const CorrectionPolicyKind CORRECTION_POLICY_UNSPECIFIED =
      CorrectionPolicyKind._(
          0, _omitEnumNames ? '' : 'CORRECTION_POLICY_UNSPECIFIED');
  static const CorrectionPolicyKind CORRECTION_POLICY_NONE =
      CorrectionPolicyKind._(1, _omitEnumNames ? '' : 'CORRECTION_POLICY_NONE');
  static const CorrectionPolicyKind CORRECTION_POLICY_REJECT_INVALID =
      CorrectionPolicyKind._(
          2, _omitEnumNames ? '' : 'CORRECTION_POLICY_REJECT_INVALID');
  static const CorrectionPolicyKind CORRECTION_POLICY_INTERPOLATE_LINEAR =
      CorrectionPolicyKind._(
          3, _omitEnumNames ? '' : 'CORRECTION_POLICY_INTERPOLATE_LINEAR');
  static const CorrectionPolicyKind CORRECTION_POLICY_INTERPOLATE_CUBIC =
      CorrectionPolicyKind._(
          4, _omitEnumNames ? '' : 'CORRECTION_POLICY_INTERPOLATE_CUBIC');
  static const CorrectionPolicyKind CORRECTION_POLICY_PERCENT_THRESHOLD =
      CorrectionPolicyKind._(
          5, _omitEnumNames ? '' : 'CORRECTION_POLICY_PERCENT_THRESHOLD');

  static const $core.List<CorrectionPolicyKind> values = <CorrectionPolicyKind>[
    CORRECTION_POLICY_UNSPECIFIED,
    CORRECTION_POLICY_NONE,
    CORRECTION_POLICY_REJECT_INVALID,
    CORRECTION_POLICY_INTERPOLATE_LINEAR,
    CORRECTION_POLICY_INTERPOLATE_CUBIC,
    CORRECTION_POLICY_PERCENT_THRESHOLD,
  ];

  static final $core.List<CorrectionPolicyKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static CorrectionPolicyKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CorrectionPolicyKind._(super.value, super.name);
}

/// / Remote photoplethysmography (rPPG) extraction algorithm identifier matching lamina::rppg::RppgAlgorithmId.
class RppgAlgorithmId extends $pb.ProtobufEnum {
  static const RppgAlgorithmId RPPG_ALGORITHM_ID_UNSPECIFIED =
      RppgAlgorithmId._(
          0, _omitEnumNames ? '' : 'RPPG_ALGORITHM_ID_UNSPECIFIED');
  static const RppgAlgorithmId RPPG_ALGORITHM_ID_POS =
      RppgAlgorithmId._(1, _omitEnumNames ? '' : 'RPPG_ALGORITHM_ID_POS');
  static const RppgAlgorithmId RPPG_ALGORITHM_ID_CHROM =
      RppgAlgorithmId._(2, _omitEnumNames ? '' : 'RPPG_ALGORITHM_ID_CHROM');
  static const RppgAlgorithmId RPPG_ALGORITHM_ID_GREEN =
      RppgAlgorithmId._(3, _omitEnumNames ? '' : 'RPPG_ALGORITHM_ID_GREEN');

  static const $core.List<RppgAlgorithmId> values = <RppgAlgorithmId>[
    RPPG_ALGORITHM_ID_UNSPECIFIED,
    RPPG_ALGORITHM_ID_POS,
    RPPG_ALGORITHM_ID_CHROM,
    RPPG_ALGORITHM_ID_GREEN,
  ];

  static final $core.List<RppgAlgorithmId?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static RppgAlgorithmId? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RppgAlgorithmId._(super.value, super.name);
}

/// / Feature quality issue enumeration matching lamina::features::quality::FeatureQualityIssue.
class FeatureQualityIssue extends $pb.ProtobufEnum {
  static const FeatureQualityIssue FEATURE_QUALITY_ISSUE_UNSPECIFIED =
      FeatureQualityIssue._(
          0, _omitEnumNames ? '' : 'FEATURE_QUALITY_ISSUE_UNSPECIFIED');
  static const FeatureQualityIssue FEATURE_QUALITY_ISSUE_INSUFFICIENT_BEATS =
      FeatureQualityIssue._(
          1, _omitEnumNames ? '' : 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_BEATS');
  static const FeatureQualityIssue
      FEATURE_QUALITY_ISSUE_INSUFFICIENT_RESPIRATION_CYCLES =
      FeatureQualityIssue._(
          2,
          _omitEnumNames
              ? ''
              : 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_RESPIRATION_CYCLES');
  static const FeatureQualityIssue
      FEATURE_QUALITY_ISSUE_INSUFFICIENT_SCR_EVENTS = FeatureQualityIssue._(
          3,
          _omitEnumNames
              ? ''
              : 'FEATURE_QUALITY_ISSUE_INSUFFICIENT_SCR_EVENTS');
  static const FeatureQualityIssue FEATURE_QUALITY_ISSUE_LOW_COVERAGE =
      FeatureQualityIssue._(
          4, _omitEnumNames ? '' : 'FEATURE_QUALITY_ISSUE_LOW_COVERAGE');
  static const FeatureQualityIssue FEATURE_QUALITY_ISSUE_MISSING_MODALITY =
      FeatureQualityIssue._(
          5, _omitEnumNames ? '' : 'FEATURE_QUALITY_ISSUE_MISSING_MODALITY');
  static const FeatureQualityIssue FEATURE_QUALITY_ISSUE_INVALID_INPUT =
      FeatureQualityIssue._(
          6, _omitEnumNames ? '' : 'FEATURE_QUALITY_ISSUE_INVALID_INPUT');

  static const $core.List<FeatureQualityIssue> values = <FeatureQualityIssue>[
    FEATURE_QUALITY_ISSUE_UNSPECIFIED,
    FEATURE_QUALITY_ISSUE_INSUFFICIENT_BEATS,
    FEATURE_QUALITY_ISSUE_INSUFFICIENT_RESPIRATION_CYCLES,
    FEATURE_QUALITY_ISSUE_INSUFFICIENT_SCR_EVENTS,
    FEATURE_QUALITY_ISSUE_LOW_COVERAGE,
    FEATURE_QUALITY_ISSUE_MISSING_MODALITY,
    FEATURE_QUALITY_ISSUE_INVALID_INPUT,
  ];

  static final $core.List<FeatureQualityIssue?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static FeatureQualityIssue? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FeatureQualityIssue._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
