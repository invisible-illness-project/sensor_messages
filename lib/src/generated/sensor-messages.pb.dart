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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import 'sensor-messages.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'sensor-messages.pbenum.dart';

/// / Structured identification for device, patient, and recording session context.
class DeviceMetadata extends $pb.GeneratedMessage {
  factory DeviceMetadata({
    $core.String? deviceId,
    $core.String? patientId,
    $core.String? sessionId,
    $core.String? hardwareModel,
    $core.String? firmwareVersion,
    $core.int? batteryPercent,
    $core.String? sensorLocation,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (patientId != null) result.patientId = patientId;
    if (sessionId != null) result.sessionId = sessionId;
    if (hardwareModel != null) result.hardwareModel = hardwareModel;
    if (firmwareVersion != null) result.firmwareVersion = firmwareVersion;
    if (batteryPercent != null) result.batteryPercent = batteryPercent;
    if (sensorLocation != null) result.sensorLocation = sensorLocation;
    return result;
  }

  DeviceMetadata._();

  factory DeviceMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceId')
    ..aOS(2, _omitFieldNames ? '' : 'patientId')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOS(4, _omitFieldNames ? '' : 'hardwareModel')
    ..aOS(5, _omitFieldNames ? '' : 'firmwareVersion')
    ..aI(6, _omitFieldNames ? '' : 'batteryPercent',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'sensorLocation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceMetadata copyWith(void Function(DeviceMetadata) updates) =>
      super.copyWith((message) => updates(message as DeviceMetadata))
          as DeviceMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceMetadata create() => DeviceMetadata._();
  @$core.override
  DeviceMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceMetadata>(create);
  static DeviceMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get patientId => $_getSZ(1);
  @$pb.TagNumber(2)
  set patientId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPatientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get hardwareModel => $_getSZ(3);
  @$pb.TagNumber(4)
  set hardwareModel($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHardwareModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearHardwareModel() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get firmwareVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set firmwareVersion($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFirmwareVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirmwareVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get batteryPercent => $_getIZ(5);
  @$pb.TagNumber(6)
  set batteryPercent($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBatteryPercent() => $_has(5);
  @$pb.TagNumber(6)
  void clearBatteryPercent() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sensorLocation => $_getSZ(6);
  @$pb.TagNumber(7)
  set sensorLocation($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSensorLocation() => $_has(6);
  @$pb.TagNumber(7)
  void clearSensorLocation() => $_clearField(7);
}

/// / Digital filter specification and provenance metadata.
class FilterSpec extends $pb.GeneratedMessage {
  factory FilterSpec({
    FilterKind? kind,
    $core.double? samplingRateHz,
    $core.Iterable<$core.double>? cutoffsHz,
    $core.int? order,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (cutoffsHz != null) result.cutoffsHz.addAll(cutoffsHz);
    if (order != null) result.order = order;
    return result;
  }

  FilterSpec._();

  factory FilterSpec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FilterSpec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FilterSpec',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aE<FilterKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: FilterKind.values)
    ..aD(2, _omitFieldNames ? '' : 'samplingRateHz')
    ..p<$core.double>(3, _omitFieldNames ? '' : 'cutoffsHz', $pb.PbFieldType.KD)
    ..aI(4, _omitFieldNames ? '' : 'order', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterSpec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FilterSpec copyWith(void Function(FilterSpec) updates) =>
      super.copyWith((message) => updates(message as FilterSpec)) as FilterSpec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FilterSpec create() => FilterSpec._();
  @$core.override
  FilterSpec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FilterSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FilterSpec>(create);
  static FilterSpec? _defaultInstance;

  @$pb.TagNumber(1)
  FilterKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(FilterKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get samplingRateHz => $_getN(1);
  @$pb.TagNumber(2)
  set samplingRateHz($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSamplingRateHz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingRateHz() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get cutoffsHz => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get order => $_getIZ(3);
  @$pb.TagNumber(4)
  set order($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => $_clearField(4);
}

/// / Helper wrapper for 1D double array in multi-channel matrices.
class DoubleArray extends $pb.GeneratedMessage {
  factory DoubleArray({
    $core.Iterable<$core.double>? values,
  }) {
    final result = create();
    if (values != null) result.values.addAll(values);
    return result;
  }

  DoubleArray._();

  factory DoubleArray.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleArray.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleArray',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleArray clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleArray copyWith(void Function(DoubleArray) updates) =>
      super.copyWith((message) => updates(message as DoubleArray))
          as DoubleArray;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleArray create() => DoubleArray._();
  @$core.override
  DoubleArray createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleArray getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleArray>(create);
  static DoubleArray? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get values => $_getList(0);
}

/// / Continuous 1D physiological signal sample batch matching lamina::features::TimedSignal.
class ContinuousSignalBatch extends $pb.GeneratedMessage {
  factory ContinuousSignalBatch({
    $0.Timestamp? startTimestamp,
    $core.double? startOffsetSec,
    $core.double? samplingRateHz,
    SensorModality? modality,
    PhysicalUnit? unit,
    $core.String? channelName,
    $core.Iterable<$core.double>? samples,
    $core.Iterable<$core.bool>? missingMask,
    FilterSpec? filterApplied,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (startTimestamp != null) result.startTimestamp = startTimestamp;
    if (startOffsetSec != null) result.startOffsetSec = startOffsetSec;
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (modality != null) result.modality = modality;
    if (unit != null) result.unit = unit;
    if (channelName != null) result.channelName = channelName;
    if (samples != null) result.samples.addAll(samples);
    if (missingMask != null) result.missingMask.addAll(missingMask);
    if (filterApplied != null) result.filterApplied = filterApplied;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  ContinuousSignalBatch._();

  factory ContinuousSignalBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContinuousSignalBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContinuousSignalBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'startTimestamp',
        subBuilder: $0.Timestamp.create)
    ..aD(2, _omitFieldNames ? '' : 'startOffsetSec')
    ..aD(3, _omitFieldNames ? '' : 'samplingRateHz')
    ..aE<SensorModality>(4, _omitFieldNames ? '' : 'modality',
        enumValues: SensorModality.values)
    ..aE<PhysicalUnit>(5, _omitFieldNames ? '' : 'unit',
        enumValues: PhysicalUnit.values)
    ..aOS(6, _omitFieldNames ? '' : 'channelName')
    ..p<$core.double>(7, _omitFieldNames ? '' : 'samples', $pb.PbFieldType.KD)
    ..p<$core.bool>(8, _omitFieldNames ? '' : 'missingMask', $pb.PbFieldType.KB)
    ..aOM<FilterSpec>(9, _omitFieldNames ? '' : 'filterApplied',
        subBuilder: FilterSpec.create)
    ..aOM<DeviceMetadata>(10, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContinuousSignalBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContinuousSignalBatch copyWith(
          void Function(ContinuousSignalBatch) updates) =>
      super.copyWith((message) => updates(message as ContinuousSignalBatch))
          as ContinuousSignalBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContinuousSignalBatch create() => ContinuousSignalBatch._();
  @$core.override
  ContinuousSignalBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContinuousSignalBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContinuousSignalBatch>(create);
  static ContinuousSignalBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get startTimestamp => $_getN(0);
  @$pb.TagNumber(1)
  set startTimestamp($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStartTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTimestamp() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureStartTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get startOffsetSec => $_getN(1);
  @$pb.TagNumber(2)
  set startOffsetSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartOffsetSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartOffsetSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get samplingRateHz => $_getN(2);
  @$pb.TagNumber(3)
  set samplingRateHz($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSamplingRateHz() => $_has(2);
  @$pb.TagNumber(3)
  void clearSamplingRateHz() => $_clearField(3);

  @$pb.TagNumber(4)
  SensorModality get modality => $_getN(3);
  @$pb.TagNumber(4)
  set modality(SensorModality value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasModality() => $_has(3);
  @$pb.TagNumber(4)
  void clearModality() => $_clearField(4);

  @$pb.TagNumber(5)
  PhysicalUnit get unit => $_getN(4);
  @$pb.TagNumber(5)
  set unit(PhysicalUnit value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUnit() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get channelName => $_getSZ(5);
  @$pb.TagNumber(6)
  set channelName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasChannelName() => $_has(5);
  @$pb.TagNumber(6)
  void clearChannelName() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get samples => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.bool> get missingMask => $_getList(7);

  @$pb.TagNumber(9)
  FilterSpec get filterApplied => $_getN(8);
  @$pb.TagNumber(9)
  set filterApplied(FilterSpec value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFilterApplied() => $_has(8);
  @$pb.TagNumber(9)
  void clearFilterApplied() => $_clearField(9);
  @$pb.TagNumber(9)
  FilterSpec ensureFilterApplied() => $_ensure(8);

  @$pb.TagNumber(10)
  DeviceMetadata get metadata => $_getN(9);
  @$pb.TagNumber(10)
  set metadata(DeviceMetadata value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMetadata() => $_has(9);
  @$pb.TagNumber(10)
  void clearMetadata() => $_clearField(10);
  @$pb.TagNumber(10)
  DeviceMetadata ensureMetadata() => $_ensure(9);
}

/// / Synchronized multi-channel continuous signal batch (e.g. 3-axis Accel, multi-wavelength PPG).
class MultiChannelSignalBatch extends $pb.GeneratedMessage {
  factory MultiChannelSignalBatch({
    $0.Timestamp? startTimestamp,
    $core.double? startOffsetSec,
    $core.double? samplingRateHz,
    SensorModality? modality,
    $core.Iterable<$core.String>? channelNames,
    $core.Iterable<PhysicalUnit>? channelUnits,
    $core.Iterable<DoubleArray>? channelSamples,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (startTimestamp != null) result.startTimestamp = startTimestamp;
    if (startOffsetSec != null) result.startOffsetSec = startOffsetSec;
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (modality != null) result.modality = modality;
    if (channelNames != null) result.channelNames.addAll(channelNames);
    if (channelUnits != null) result.channelUnits.addAll(channelUnits);
    if (channelSamples != null) result.channelSamples.addAll(channelSamples);
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  MultiChannelSignalBatch._();

  factory MultiChannelSignalBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultiChannelSignalBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultiChannelSignalBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'startTimestamp',
        subBuilder: $0.Timestamp.create)
    ..aD(2, _omitFieldNames ? '' : 'startOffsetSec')
    ..aD(3, _omitFieldNames ? '' : 'samplingRateHz')
    ..aE<SensorModality>(4, _omitFieldNames ? '' : 'modality',
        enumValues: SensorModality.values)
    ..pPS(5, _omitFieldNames ? '' : 'channelNames')
    ..pc<PhysicalUnit>(
        6, _omitFieldNames ? '' : 'channelUnits', $pb.PbFieldType.KE,
        valueOf: PhysicalUnit.valueOf,
        enumValues: PhysicalUnit.values,
        defaultEnumValue: PhysicalUnit.PHYSICAL_UNIT_UNSPECIFIED)
    ..pPM<DoubleArray>(7, _omitFieldNames ? '' : 'channelSamples',
        subBuilder: DoubleArray.create)
    ..aOM<DeviceMetadata>(8, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultiChannelSignalBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultiChannelSignalBatch copyWith(
          void Function(MultiChannelSignalBatch) updates) =>
      super.copyWith((message) => updates(message as MultiChannelSignalBatch))
          as MultiChannelSignalBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiChannelSignalBatch create() => MultiChannelSignalBatch._();
  @$core.override
  MultiChannelSignalBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultiChannelSignalBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultiChannelSignalBatch>(create);
  static MultiChannelSignalBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get startTimestamp => $_getN(0);
  @$pb.TagNumber(1)
  set startTimestamp($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStartTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTimestamp() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureStartTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get startOffsetSec => $_getN(1);
  @$pb.TagNumber(2)
  set startOffsetSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartOffsetSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartOffsetSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get samplingRateHz => $_getN(2);
  @$pb.TagNumber(3)
  set samplingRateHz($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSamplingRateHz() => $_has(2);
  @$pb.TagNumber(3)
  void clearSamplingRateHz() => $_clearField(3);

  @$pb.TagNumber(4)
  SensorModality get modality => $_getN(3);
  @$pb.TagNumber(4)
  set modality(SensorModality value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasModality() => $_has(3);
  @$pb.TagNumber(4)
  void clearModality() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get channelNames => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<PhysicalUnit> get channelUnits => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<DoubleArray> get channelSamples => $_getList(6);

  @$pb.TagNumber(8)
  DeviceMetadata get metadata => $_getN(7);
  @$pb.TagNumber(8)
  set metadata(DeviceMetadata value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMetadata() => $_has(7);
  @$pb.TagNumber(8)
  void clearMetadata() => $_clearField(8);
  @$pb.TagNumber(8)
  DeviceMetadata ensureMetadata() => $_ensure(7);
}

/// / Single point-in-time sensor measurement (e.g. Temperature, Battery).
class SinglePointMeasurement extends $pb.GeneratedMessage {
  factory SinglePointMeasurement({
    $0.Timestamp? timestamp,
    SensorModality? modality,
    $core.double? value,
    PhysicalUnit? unit,
    $core.String? metricName,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (modality != null) result.modality = modality;
    if (value != null) result.value = value;
    if (unit != null) result.unit = unit;
    if (metricName != null) result.metricName = metricName;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  SinglePointMeasurement._();

  factory SinglePointMeasurement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SinglePointMeasurement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SinglePointMeasurement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $0.Timestamp.create)
    ..aE<SensorModality>(2, _omitFieldNames ? '' : 'modality',
        enumValues: SensorModality.values)
    ..aD(3, _omitFieldNames ? '' : 'value')
    ..aE<PhysicalUnit>(4, _omitFieldNames ? '' : 'unit',
        enumValues: PhysicalUnit.values)
    ..aOS(5, _omitFieldNames ? '' : 'metricName')
    ..aOM<DeviceMetadata>(6, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SinglePointMeasurement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SinglePointMeasurement copyWith(
          void Function(SinglePointMeasurement) updates) =>
      super.copyWith((message) => updates(message as SinglePointMeasurement))
          as SinglePointMeasurement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SinglePointMeasurement create() => SinglePointMeasurement._();
  @$core.override
  SinglePointMeasurement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SinglePointMeasurement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SinglePointMeasurement>(create);
  static SinglePointMeasurement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  SensorModality get modality => $_getN(1);
  @$pb.TagNumber(2)
  set modality(SensorModality value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasModality() => $_has(1);
  @$pb.TagNumber(2)
  void clearModality() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);

  @$pb.TagNumber(4)
  PhysicalUnit get unit => $_getN(3);
  @$pb.TagNumber(4)
  set unit(PhysicalUnit value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnit() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get metricName => $_getSZ(4);
  @$pb.TagNumber(5)
  set metricName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMetricName() => $_has(4);
  @$pb.TagNumber(5)
  void clearMetricName() => $_clearField(5);

  @$pb.TagNumber(6)
  DeviceMetadata get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata(DeviceMetadata value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => $_clearField(6);
  @$pb.TagNumber(6)
  DeviceMetadata ensureMetadata() => $_ensure(5);
}

/// / Discrete blood pressure reading.
class BloodPressureMeasurement extends $pb.GeneratedMessage {
  factory BloodPressureMeasurement({
    $0.Timestamp? timestamp,
    $core.int? systolicMmhg,
    $core.int? diastolicMmhg,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (systolicMmhg != null) result.systolicMmhg = systolicMmhg;
    if (diastolicMmhg != null) result.diastolicMmhg = diastolicMmhg;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  BloodPressureMeasurement._();

  factory BloodPressureMeasurement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BloodPressureMeasurement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BloodPressureMeasurement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $0.Timestamp.create)
    ..aI(2, _omitFieldNames ? '' : 'systolicMmhg',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'diastolicMmhg',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<DeviceMetadata>(4, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureMeasurement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureMeasurement copyWith(
          void Function(BloodPressureMeasurement) updates) =>
      super.copyWith((message) => updates(message as BloodPressureMeasurement))
          as BloodPressureMeasurement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodPressureMeasurement create() => BloodPressureMeasurement._();
  @$core.override
  BloodPressureMeasurement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BloodPressureMeasurement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BloodPressureMeasurement>(create);
  static BloodPressureMeasurement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get systolicMmhg => $_getIZ(1);
  @$pb.TagNumber(2)
  set systolicMmhg($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystolicMmhg() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystolicMmhg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get diastolicMmhg => $_getIZ(2);
  @$pb.TagNumber(3)
  set diastolicMmhg($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDiastolicMmhg() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiastolicMmhg() => $_clearField(3);

  @$pb.TagNumber(4)
  DeviceMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata(DeviceMetadata value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);
  @$pb.TagNumber(4)
  DeviceMetadata ensureMetadata() => $_ensure(3);
}

/// / Single cardiac peak detection event (ECG R-peak or PPG Systolic peak).
class CardiacPeakEvent extends $pb.GeneratedMessage {
  factory CardiacPeakEvent({
    $fixnum.Int64? sampleIndex,
    $core.double? timestampSec,
    $core.double? amplitude,
    SensorModality? modality,
  }) {
    final result = create();
    if (sampleIndex != null) result.sampleIndex = sampleIndex;
    if (timestampSec != null) result.timestampSec = timestampSec;
    if (amplitude != null) result.amplitude = amplitude;
    if (modality != null) result.modality = modality;
    return result;
  }

  CardiacPeakEvent._();

  factory CardiacPeakEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardiacPeakEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardiacPeakEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'sampleIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(2, _omitFieldNames ? '' : 'timestampSec')
    ..aD(3, _omitFieldNames ? '' : 'amplitude')
    ..aE<SensorModality>(4, _omitFieldNames ? '' : 'modality',
        enumValues: SensorModality.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacPeakEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacPeakEvent copyWith(void Function(CardiacPeakEvent) updates) =>
      super.copyWith((message) => updates(message as CardiacPeakEvent))
          as CardiacPeakEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardiacPeakEvent create() => CardiacPeakEvent._();
  @$core.override
  CardiacPeakEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardiacPeakEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardiacPeakEvent>(create);
  static CardiacPeakEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sampleIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set sampleIndex($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSampleIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearSampleIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get timestampSec => $_getN(1);
  @$pb.TagNumber(2)
  set timestampSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get amplitude => $_getN(2);
  @$pb.TagNumber(3)
  set amplitude($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmplitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmplitude() => $_clearField(3);

  @$pb.TagNumber(4)
  SensorModality get modality => $_getN(3);
  @$pb.TagNumber(4)
  set modality(SensorModality value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasModality() => $_has(3);
  @$pb.TagNumber(4)
  void clearModality() => $_clearField(4);
}

class CardiacPeakBatch extends $pb.GeneratedMessage {
  factory CardiacPeakBatch({
    $core.Iterable<CardiacPeakEvent>? events,
    $core.double? samplingRateHz,
    $core.double? offsetSec,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (events != null) result.events.addAll(events);
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (offsetSec != null) result.offsetSec = offsetSec;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  CardiacPeakBatch._();

  factory CardiacPeakBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardiacPeakBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardiacPeakBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..pPM<CardiacPeakEvent>(1, _omitFieldNames ? '' : 'events',
        subBuilder: CardiacPeakEvent.create)
    ..aD(2, _omitFieldNames ? '' : 'samplingRateHz')
    ..aD(3, _omitFieldNames ? '' : 'offsetSec')
    ..aOM<DeviceMetadata>(4, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacPeakBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacPeakBatch copyWith(void Function(CardiacPeakBatch) updates) =>
      super.copyWith((message) => updates(message as CardiacPeakBatch))
          as CardiacPeakBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardiacPeakBatch create() => CardiacPeakBatch._();
  @$core.override
  CardiacPeakBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardiacPeakBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardiacPeakBatch>(create);
  static CardiacPeakBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CardiacPeakEvent> get events => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get samplingRateHz => $_getN(1);
  @$pb.TagNumber(2)
  set samplingRateHz($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSamplingRateHz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingRateHz() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetSec => $_getN(2);
  @$pb.TagNumber(3)
  set offsetSec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffsetSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetSec() => $_clearField(3);

  @$pb.TagNumber(4)
  DeviceMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata(DeviceMetadata value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);
  @$pb.TagNumber(4)
  DeviceMetadata ensureMetadata() => $_ensure(3);
}

/// / Electrodermal SCR event matching lamina::eda::ScrEvent.
class ScrEvent extends $pb.GeneratedMessage {
  factory ScrEvent({
    $fixnum.Int64? onsetIndex,
    $core.double? onsetTimeSec,
    $fixnum.Int64? peakIndex,
    $core.double? peakTimeSec,
    $core.double? amplitudeUs,
    $core.double? riseTimeSec,
  }) {
    final result = create();
    if (onsetIndex != null) result.onsetIndex = onsetIndex;
    if (onsetTimeSec != null) result.onsetTimeSec = onsetTimeSec;
    if (peakIndex != null) result.peakIndex = peakIndex;
    if (peakTimeSec != null) result.peakTimeSec = peakTimeSec;
    if (amplitudeUs != null) result.amplitudeUs = amplitudeUs;
    if (riseTimeSec != null) result.riseTimeSec = riseTimeSec;
    return result;
  }

  ScrEvent._();

  factory ScrEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScrEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScrEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'onsetIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(2, _omitFieldNames ? '' : 'onsetTimeSec')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'peakIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(4, _omitFieldNames ? '' : 'peakTimeSec')
    ..aD(5, _omitFieldNames ? '' : 'amplitudeUs')
    ..aD(6, _omitFieldNames ? '' : 'riseTimeSec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScrEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScrEvent copyWith(void Function(ScrEvent) updates) =>
      super.copyWith((message) => updates(message as ScrEvent)) as ScrEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScrEvent create() => ScrEvent._();
  @$core.override
  ScrEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScrEvent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScrEvent>(create);
  static ScrEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get onsetIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set onsetIndex($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnsetIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnsetIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get onsetTimeSec => $_getN(1);
  @$pb.TagNumber(2)
  set onsetTimeSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOnsetTimeSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnsetTimeSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get peakIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set peakIndex($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPeakIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeakIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get peakTimeSec => $_getN(3);
  @$pb.TagNumber(4)
  set peakTimeSec($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPeakTimeSec() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeakTimeSec() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get amplitudeUs => $_getN(4);
  @$pb.TagNumber(5)
  set amplitudeUs($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAmplitudeUs() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmplitudeUs() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get riseTimeSec => $_getN(5);
  @$pb.TagNumber(6)
  set riseTimeSec($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRiseTimeSec() => $_has(5);
  @$pb.TagNumber(6)
  void clearRiseTimeSec() => $_clearField(6);
}

class ScrEventBatch extends $pb.GeneratedMessage {
  factory ScrEventBatch({
    $core.Iterable<ScrEvent>? events,
    $core.double? samplingRateHz,
    $core.double? offsetSec,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (events != null) result.events.addAll(events);
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (offsetSec != null) result.offsetSec = offsetSec;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  ScrEventBatch._();

  factory ScrEventBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ScrEventBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScrEventBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..pPM<ScrEvent>(1, _omitFieldNames ? '' : 'events',
        subBuilder: ScrEvent.create)
    ..aD(2, _omitFieldNames ? '' : 'samplingRateHz')
    ..aD(3, _omitFieldNames ? '' : 'offsetSec')
    ..aOM<DeviceMetadata>(4, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScrEventBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ScrEventBatch copyWith(void Function(ScrEventBatch) updates) =>
      super.copyWith((message) => updates(message as ScrEventBatch))
          as ScrEventBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScrEventBatch create() => ScrEventBatch._();
  @$core.override
  ScrEventBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ScrEventBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScrEventBatch>(create);
  static ScrEventBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ScrEvent> get events => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get samplingRateHz => $_getN(1);
  @$pb.TagNumber(2)
  set samplingRateHz($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSamplingRateHz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingRateHz() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetSec => $_getN(2);
  @$pb.TagNumber(3)
  set offsetSec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffsetSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetSec() => $_clearField(3);

  @$pb.TagNumber(4)
  DeviceMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata(DeviceMetadata value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);
  @$pb.TagNumber(4)
  DeviceMetadata ensureMetadata() => $_ensure(3);
}

/// / Respiration breath cycle matching lamina::rsp::RespirationCycle.
class RespirationCycle extends $pb.GeneratedMessage {
  factory RespirationCycle({
    $fixnum.Int64? inspirationIndex,
    $core.double? inspirationTimeSec,
    $fixnum.Int64? expirationIndex,
    $core.double? expirationTimeSec,
    $core.double? durationSec,
    $core.double? amplitude,
    $core.bool? isValid,
  }) {
    final result = create();
    if (inspirationIndex != null) result.inspirationIndex = inspirationIndex;
    if (inspirationTimeSec != null)
      result.inspirationTimeSec = inspirationTimeSec;
    if (expirationIndex != null) result.expirationIndex = expirationIndex;
    if (expirationTimeSec != null) result.expirationTimeSec = expirationTimeSec;
    if (durationSec != null) result.durationSec = durationSec;
    if (amplitude != null) result.amplitude = amplitude;
    if (isValid != null) result.isValid = isValid;
    return result;
  }

  RespirationCycle._();

  factory RespirationCycle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RespirationCycle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RespirationCycle',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'inspirationIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(2, _omitFieldNames ? '' : 'inspirationTimeSec')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'expirationIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(4, _omitFieldNames ? '' : 'expirationTimeSec')
    ..aD(5, _omitFieldNames ? '' : 'durationSec')
    ..aD(6, _omitFieldNames ? '' : 'amplitude')
    ..aOB(7, _omitFieldNames ? '' : 'isValid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationCycle clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationCycle copyWith(void Function(RespirationCycle) updates) =>
      super.copyWith((message) => updates(message as RespirationCycle))
          as RespirationCycle;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespirationCycle create() => RespirationCycle._();
  @$core.override
  RespirationCycle createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RespirationCycle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RespirationCycle>(create);
  static RespirationCycle? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inspirationIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set inspirationIndex($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInspirationIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearInspirationIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get inspirationTimeSec => $_getN(1);
  @$pb.TagNumber(2)
  set inspirationTimeSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInspirationTimeSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearInspirationTimeSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expirationIndex => $_getI64(2);
  @$pb.TagNumber(3)
  set expirationIndex($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpirationIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get expirationTimeSec => $_getN(3);
  @$pb.TagNumber(4)
  set expirationTimeSec($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExpirationTimeSec() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpirationTimeSec() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get durationSec => $_getN(4);
  @$pb.TagNumber(5)
  set durationSec($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDurationSec() => $_has(4);
  @$pb.TagNumber(5)
  void clearDurationSec() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get amplitude => $_getN(5);
  @$pb.TagNumber(6)
  set amplitude($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAmplitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmplitude() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isValid => $_getBF(6);
  @$pb.TagNumber(7)
  set isValid($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsValid() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsValid() => $_clearField(7);
}

class RespirationCycleBatch extends $pb.GeneratedMessage {
  factory RespirationCycleBatch({
    $core.Iterable<RespirationCycle>? cycles,
    $core.double? samplingRateHz,
    $core.double? offsetSec,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (cycles != null) result.cycles.addAll(cycles);
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (offsetSec != null) result.offsetSec = offsetSec;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  RespirationCycleBatch._();

  factory RespirationCycleBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RespirationCycleBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RespirationCycleBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..pPM<RespirationCycle>(1, _omitFieldNames ? '' : 'cycles',
        subBuilder: RespirationCycle.create)
    ..aD(2, _omitFieldNames ? '' : 'samplingRateHz')
    ..aD(3, _omitFieldNames ? '' : 'offsetSec')
    ..aOM<DeviceMetadata>(4, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationCycleBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationCycleBatch copyWith(
          void Function(RespirationCycleBatch) updates) =>
      super.copyWith((message) => updates(message as RespirationCycleBatch))
          as RespirationCycleBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespirationCycleBatch create() => RespirationCycleBatch._();
  @$core.override
  RespirationCycleBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RespirationCycleBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RespirationCycleBatch>(create);
  static RespirationCycleBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RespirationCycle> get cycles => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get samplingRateHz => $_getN(1);
  @$pb.TagNumber(2)
  set samplingRateHz($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSamplingRateHz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingRateHz() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetSec => $_getN(2);
  @$pb.TagNumber(3)
  set offsetSec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffsetSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetSec() => $_clearField(3);

  @$pb.TagNumber(4)
  DeviceMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata(DeviceMetadata value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);
  @$pb.TagNumber(4)
  DeviceMetadata ensureMetadata() => $_ensure(3);
}

/// / ECG-to-PPG pulse delay timing matching lamina::multimodal::ecg_ppg::PulseTimingResult.
class PulseTimingResult extends $pb.GeneratedMessage {
  factory PulseTimingResult({
    $core.double? rPeakTimeSec,
    $core.double? ppgPeakTimeSec,
    $core.double? pulseDelaySec,
  }) {
    final result = create();
    if (rPeakTimeSec != null) result.rPeakTimeSec = rPeakTimeSec;
    if (ppgPeakTimeSec != null) result.ppgPeakTimeSec = ppgPeakTimeSec;
    if (pulseDelaySec != null) result.pulseDelaySec = pulseDelaySec;
    return result;
  }

  PulseTimingResult._();

  factory PulseTimingResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PulseTimingResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PulseTimingResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'rPeakTimeSec')
    ..aD(2, _omitFieldNames ? '' : 'ppgPeakTimeSec')
    ..aD(3, _omitFieldNames ? '' : 'pulseDelaySec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PulseTimingResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PulseTimingResult copyWith(void Function(PulseTimingResult) updates) =>
      super.copyWith((message) => updates(message as PulseTimingResult))
          as PulseTimingResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PulseTimingResult create() => PulseTimingResult._();
  @$core.override
  PulseTimingResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PulseTimingResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PulseTimingResult>(create);
  static PulseTimingResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rPeakTimeSec => $_getN(0);
  @$pb.TagNumber(1)
  set rPeakTimeSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRPeakTimeSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearRPeakTimeSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get ppgPeakTimeSec => $_getN(1);
  @$pb.TagNumber(2)
  set ppgPeakTimeSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPpgPeakTimeSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearPpgPeakTimeSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get pulseDelaySec => $_getN(2);
  @$pb.TagNumber(3)
  set pulseDelaySec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPulseDelaySec() => $_has(2);
  @$pb.TagNumber(3)
  void clearPulseDelaySec() => $_clearField(3);
}

class PulseTimingBatch extends $pb.GeneratedMessage {
  factory PulseTimingBatch({
    $core.Iterable<PulseTimingResult>? timings,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (timings != null) result.timings.addAll(timings);
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  PulseTimingBatch._();

  factory PulseTimingBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PulseTimingBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PulseTimingBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..pPM<PulseTimingResult>(1, _omitFieldNames ? '' : 'timings',
        subBuilder: PulseTimingResult.create)
    ..aOM<DeviceMetadata>(2, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PulseTimingBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PulseTimingBatch copyWith(void Function(PulseTimingBatch) updates) =>
      super.copyWith((message) => updates(message as PulseTimingBatch))
          as PulseTimingBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PulseTimingBatch create() => PulseTimingBatch._();
  @$core.override
  PulseTimingBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PulseTimingBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PulseTimingBatch>(create);
  static PulseTimingBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PulseTimingResult> get timings => $_getList(0);

  @$pb.TagNumber(2)
  DeviceMetadata get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata(DeviceMetadata value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => $_clearField(2);
  @$pb.TagNumber(2)
  DeviceMetadata ensureMetadata() => $_ensure(1);
}

/// / Respiratory Sinus Arrhythmia result matching lamina::multimodal::rsa::RsaResult.
class RsaResult extends $pb.GeneratedMessage {
  factory RsaResult({
    $core.double? beatTimeSec,
    $core.double? amplitudeBpm,
    $core.double? amplitudeRrSec,
  }) {
    final result = create();
    if (beatTimeSec != null) result.beatTimeSec = beatTimeSec;
    if (amplitudeBpm != null) result.amplitudeBpm = amplitudeBpm;
    if (amplitudeRrSec != null) result.amplitudeRrSec = amplitudeRrSec;
    return result;
  }

  RsaResult._();

  factory RsaResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RsaResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RsaResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'beatTimeSec')
    ..aD(2, _omitFieldNames ? '' : 'amplitudeBpm')
    ..aD(3, _omitFieldNames ? '' : 'amplitudeRrSec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RsaResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RsaResult copyWith(void Function(RsaResult) updates) =>
      super.copyWith((message) => updates(message as RsaResult)) as RsaResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RsaResult create() => RsaResult._();
  @$core.override
  RsaResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RsaResult getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RsaResult>(create);
  static RsaResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get beatTimeSec => $_getN(0);
  @$pb.TagNumber(1)
  set beatTimeSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBeatTimeSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeatTimeSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get amplitudeBpm => $_getN(1);
  @$pb.TagNumber(2)
  set amplitudeBpm($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmplitudeBpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmplitudeBpm() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get amplitudeRrSec => $_getN(2);
  @$pb.TagNumber(3)
  set amplitudeRrSec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmplitudeRrSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmplitudeRrSec() => $_clearField(3);
}

class RsaBatch extends $pb.GeneratedMessage {
  factory RsaBatch({
    $core.Iterable<RsaResult>? results,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (results != null) result.results.addAll(results);
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  RsaBatch._();

  factory RsaBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RsaBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RsaBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..pPM<RsaResult>(1, _omitFieldNames ? '' : 'results',
        subBuilder: RsaResult.create)
    ..aOM<DeviceMetadata>(2, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RsaBatch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RsaBatch copyWith(void Function(RsaBatch) updates) =>
      super.copyWith((message) => updates(message as RsaBatch)) as RsaBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RsaBatch create() => RsaBatch._();
  @$core.override
  RsaBatch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RsaBatch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RsaBatch>(create);
  static RsaBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RsaResult> get results => $_getList(0);

  @$pb.TagNumber(2)
  DeviceMetadata get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata(DeviceMetadata value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => $_clearField(2);
  @$pb.TagNumber(2)
  DeviceMetadata ensureMetadata() => $_ensure(1);
}

/// / Physical window specification matching lamina::features::window::FeatureWindow.
class FeatureWindow extends $pb.GeneratedMessage {
  factory FeatureWindow({
    $core.double? startTimeSec,
    $core.double? endTimeSec,
    $core.double? durationSec,
  }) {
    final result = create();
    if (startTimeSec != null) result.startTimeSec = startTimeSec;
    if (endTimeSec != null) result.endTimeSec = endTimeSec;
    if (durationSec != null) result.durationSec = durationSec;
    return result;
  }

  FeatureWindow._();

  factory FeatureWindow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureWindow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureWindow',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startTimeSec')
    ..aD(2, _omitFieldNames ? '' : 'endTimeSec')
    ..aD(3, _omitFieldNames ? '' : 'durationSec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureWindow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureWindow copyWith(void Function(FeatureWindow) updates) =>
      super.copyWith((message) => updates(message as FeatureWindow))
          as FeatureWindow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureWindow create() => FeatureWindow._();
  @$core.override
  FeatureWindow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeatureWindow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureWindow>(create);
  static FeatureWindow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get startTimeSec => $_getN(0);
  @$pb.TagNumber(1)
  set startTimeSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartTimeSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTimeSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get endTimeSec => $_getN(1);
  @$pb.TagNumber(2)
  set endTimeSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndTimeSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTimeSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get durationSec => $_getN(2);
  @$pb.TagNumber(3)
  set durationSec($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDurationSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearDurationSec() => $_clearField(3);
}

/// / Cardiac features matching lamina::features::cardiac::CardiacFeatures.
class CardiacFeatures extends $pb.GeneratedMessage {
  factory CardiacFeatures({
    $core.double? meanHrBpm,
    $core.double? medianHrBpm,
    $core.double? sdnnMs,
    $core.double? rmssdMs,
    $core.double? pnn50,
    $core.double? rrMeanMs,
    $core.double? rrStdMs,
    $fixnum.Int64? beatCount,
  }) {
    final result = create();
    if (meanHrBpm != null) result.meanHrBpm = meanHrBpm;
    if (medianHrBpm != null) result.medianHrBpm = medianHrBpm;
    if (sdnnMs != null) result.sdnnMs = sdnnMs;
    if (rmssdMs != null) result.rmssdMs = rmssdMs;
    if (pnn50 != null) result.pnn50 = pnn50;
    if (rrMeanMs != null) result.rrMeanMs = rrMeanMs;
    if (rrStdMs != null) result.rrStdMs = rrStdMs;
    if (beatCount != null) result.beatCount = beatCount;
    return result;
  }

  CardiacFeatures._();

  factory CardiacFeatures.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardiacFeatures.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardiacFeatures',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'meanHrBpm')
    ..aD(2, _omitFieldNames ? '' : 'medianHrBpm')
    ..aD(3, _omitFieldNames ? '' : 'sdnnMs')
    ..aD(4, _omitFieldNames ? '' : 'rmssdMs')
    ..aD(5, _omitFieldNames ? '' : 'pnn50')
    ..aD(6, _omitFieldNames ? '' : 'rrMeanMs')
    ..aD(7, _omitFieldNames ? '' : 'rrStdMs')
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'beatCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacFeatures clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacFeatures copyWith(void Function(CardiacFeatures) updates) =>
      super.copyWith((message) => updates(message as CardiacFeatures))
          as CardiacFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardiacFeatures create() => CardiacFeatures._();
  @$core.override
  CardiacFeatures createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardiacFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardiacFeatures>(create);
  static CardiacFeatures? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get meanHrBpm => $_getN(0);
  @$pb.TagNumber(1)
  set meanHrBpm($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeanHrBpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeanHrBpm() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get medianHrBpm => $_getN(1);
  @$pb.TagNumber(2)
  set medianHrBpm($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMedianHrBpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedianHrBpm() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get sdnnMs => $_getN(2);
  @$pb.TagNumber(3)
  set sdnnMs($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSdnnMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearSdnnMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get rmssdMs => $_getN(3);
  @$pb.TagNumber(4)
  set rmssdMs($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRmssdMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearRmssdMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get pnn50 => $_getN(4);
  @$pb.TagNumber(5)
  set pnn50($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPnn50() => $_has(4);
  @$pb.TagNumber(5)
  void clearPnn50() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get rrMeanMs => $_getN(5);
  @$pb.TagNumber(6)
  set rrMeanMs($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRrMeanMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearRrMeanMs() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get rrStdMs => $_getN(6);
  @$pb.TagNumber(7)
  set rrStdMs($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRrStdMs() => $_has(6);
  @$pb.TagNumber(7)
  void clearRrStdMs() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get beatCount => $_getI64(7);
  @$pb.TagNumber(8)
  set beatCount($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBeatCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearBeatCount() => $_clearField(8);
}

/// / EDA features matching lamina::features::eda::EdaFeatures.
class EdaFeatures extends $pb.GeneratedMessage {
  factory EdaFeatures({
    $core.double? meanTonicUs,
    $core.double? medianTonicUs,
    $core.double? tonicStdUs,
    $core.double? meanPhasicUs,
    $core.double? phasicStdUs,
    $fixnum.Int64? scrCount,
    $core.double? scrRatePerMin,
    $core.double? meanScrAmplitudeUs,
    $core.double? medianScrAmplitudeUs,
    $core.double? meanScrRiseTimeSec,
  }) {
    final result = create();
    if (meanTonicUs != null) result.meanTonicUs = meanTonicUs;
    if (medianTonicUs != null) result.medianTonicUs = medianTonicUs;
    if (tonicStdUs != null) result.tonicStdUs = tonicStdUs;
    if (meanPhasicUs != null) result.meanPhasicUs = meanPhasicUs;
    if (phasicStdUs != null) result.phasicStdUs = phasicStdUs;
    if (scrCount != null) result.scrCount = scrCount;
    if (scrRatePerMin != null) result.scrRatePerMin = scrRatePerMin;
    if (meanScrAmplitudeUs != null)
      result.meanScrAmplitudeUs = meanScrAmplitudeUs;
    if (medianScrAmplitudeUs != null)
      result.medianScrAmplitudeUs = medianScrAmplitudeUs;
    if (meanScrRiseTimeSec != null)
      result.meanScrRiseTimeSec = meanScrRiseTimeSec;
    return result;
  }

  EdaFeatures._();

  factory EdaFeatures.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EdaFeatures.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EdaFeatures',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'meanTonicUs')
    ..aD(2, _omitFieldNames ? '' : 'medianTonicUs')
    ..aD(3, _omitFieldNames ? '' : 'tonicStdUs')
    ..aD(4, _omitFieldNames ? '' : 'meanPhasicUs')
    ..aD(5, _omitFieldNames ? '' : 'phasicStdUs')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'scrCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(7, _omitFieldNames ? '' : 'scrRatePerMin')
    ..aD(8, _omitFieldNames ? '' : 'meanScrAmplitudeUs')
    ..aD(9, _omitFieldNames ? '' : 'medianScrAmplitudeUs')
    ..aD(10, _omitFieldNames ? '' : 'meanScrRiseTimeSec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdaFeatures clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdaFeatures copyWith(void Function(EdaFeatures) updates) =>
      super.copyWith((message) => updates(message as EdaFeatures))
          as EdaFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdaFeatures create() => EdaFeatures._();
  @$core.override
  EdaFeatures createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EdaFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EdaFeatures>(create);
  static EdaFeatures? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get meanTonicUs => $_getN(0);
  @$pb.TagNumber(1)
  set meanTonicUs($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeanTonicUs() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeanTonicUs() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get medianTonicUs => $_getN(1);
  @$pb.TagNumber(2)
  set medianTonicUs($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMedianTonicUs() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedianTonicUs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get tonicStdUs => $_getN(2);
  @$pb.TagNumber(3)
  set tonicStdUs($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTonicStdUs() => $_has(2);
  @$pb.TagNumber(3)
  void clearTonicStdUs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get meanPhasicUs => $_getN(3);
  @$pb.TagNumber(4)
  set meanPhasicUs($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMeanPhasicUs() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeanPhasicUs() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get phasicStdUs => $_getN(4);
  @$pb.TagNumber(5)
  set phasicStdUs($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPhasicStdUs() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhasicStdUs() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get scrCount => $_getI64(5);
  @$pb.TagNumber(6)
  set scrCount($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScrCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearScrCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get scrRatePerMin => $_getN(6);
  @$pb.TagNumber(7)
  set scrRatePerMin($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasScrRatePerMin() => $_has(6);
  @$pb.TagNumber(7)
  void clearScrRatePerMin() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get meanScrAmplitudeUs => $_getN(7);
  @$pb.TagNumber(8)
  set meanScrAmplitudeUs($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMeanScrAmplitudeUs() => $_has(7);
  @$pb.TagNumber(8)
  void clearMeanScrAmplitudeUs() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get medianScrAmplitudeUs => $_getN(8);
  @$pb.TagNumber(9)
  set medianScrAmplitudeUs($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMedianScrAmplitudeUs() => $_has(8);
  @$pb.TagNumber(9)
  void clearMedianScrAmplitudeUs() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get meanScrRiseTimeSec => $_getN(9);
  @$pb.TagNumber(10)
  set meanScrRiseTimeSec($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMeanScrRiseTimeSec() => $_has(9);
  @$pb.TagNumber(10)
  void clearMeanScrRiseTimeSec() => $_clearField(10);
}

/// / Respiration features matching lamina::features::respiration::RespirationFeatures.
class RespirationFeatures extends $pb.GeneratedMessage {
  factory RespirationFeatures({
    $core.double? meanRateBpm,
    $core.double? medianRateBpm,
    $core.double? rateStdBpm,
    $core.double? meanCycleDurationSec,
    $fixnum.Int64? cycleCount,
    $core.double? meanAmplitude,
    $core.double? amplitudeStd,
  }) {
    final result = create();
    if (meanRateBpm != null) result.meanRateBpm = meanRateBpm;
    if (medianRateBpm != null) result.medianRateBpm = medianRateBpm;
    if (rateStdBpm != null) result.rateStdBpm = rateStdBpm;
    if (meanCycleDurationSec != null)
      result.meanCycleDurationSec = meanCycleDurationSec;
    if (cycleCount != null) result.cycleCount = cycleCount;
    if (meanAmplitude != null) result.meanAmplitude = meanAmplitude;
    if (amplitudeStd != null) result.amplitudeStd = amplitudeStd;
    return result;
  }

  RespirationFeatures._();

  factory RespirationFeatures.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RespirationFeatures.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RespirationFeatures',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'meanRateBpm')
    ..aD(2, _omitFieldNames ? '' : 'medianRateBpm')
    ..aD(3, _omitFieldNames ? '' : 'rateStdBpm')
    ..aD(4, _omitFieldNames ? '' : 'meanCycleDurationSec')
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'cycleCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(6, _omitFieldNames ? '' : 'meanAmplitude')
    ..aD(7, _omitFieldNames ? '' : 'amplitudeStd')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationFeatures clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespirationFeatures copyWith(void Function(RespirationFeatures) updates) =>
      super.copyWith((message) => updates(message as RespirationFeatures))
          as RespirationFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespirationFeatures create() => RespirationFeatures._();
  @$core.override
  RespirationFeatures createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RespirationFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RespirationFeatures>(create);
  static RespirationFeatures? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get meanRateBpm => $_getN(0);
  @$pb.TagNumber(1)
  set meanRateBpm($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeanRateBpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeanRateBpm() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get medianRateBpm => $_getN(1);
  @$pb.TagNumber(2)
  set medianRateBpm($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMedianRateBpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedianRateBpm() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get rateStdBpm => $_getN(2);
  @$pb.TagNumber(3)
  set rateStdBpm($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRateStdBpm() => $_has(2);
  @$pb.TagNumber(3)
  void clearRateStdBpm() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get meanCycleDurationSec => $_getN(3);
  @$pb.TagNumber(4)
  set meanCycleDurationSec($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMeanCycleDurationSec() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeanCycleDurationSec() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get cycleCount => $_getI64(4);
  @$pb.TagNumber(5)
  set cycleCount($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCycleCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCycleCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get meanAmplitude => $_getN(5);
  @$pb.TagNumber(6)
  set meanAmplitude($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMeanAmplitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearMeanAmplitude() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get amplitudeStd => $_getN(6);
  @$pb.TagNumber(7)
  set amplitudeStd($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAmplitudeStd() => $_has(6);
  @$pb.TagNumber(7)
  void clearAmplitudeStd() => $_clearField(7);
}

/// / Multimodal coupling features matching lamina::features::coupling::CouplingFeatures.
class CouplingFeatures extends $pb.GeneratedMessage {
  factory CouplingFeatures({
    $core.double? rsaAmplitudeBpm,
    $core.double? rsaAmplitudeRrSec,
    $core.double? cardiacRespiratoryConcentration,
    $core.double? cardiacRespiratoryMeanPhase,
    $core.double? meanPulseDelaySec,
    $core.double? pulseDelayStdSec,
    $fixnum.Int64? scrCardiacAssociationCount,
  }) {
    final result = create();
    if (rsaAmplitudeBpm != null) result.rsaAmplitudeBpm = rsaAmplitudeBpm;
    if (rsaAmplitudeRrSec != null) result.rsaAmplitudeRrSec = rsaAmplitudeRrSec;
    if (cardiacRespiratoryConcentration != null)
      result.cardiacRespiratoryConcentration = cardiacRespiratoryConcentration;
    if (cardiacRespiratoryMeanPhase != null)
      result.cardiacRespiratoryMeanPhase = cardiacRespiratoryMeanPhase;
    if (meanPulseDelaySec != null) result.meanPulseDelaySec = meanPulseDelaySec;
    if (pulseDelayStdSec != null) result.pulseDelayStdSec = pulseDelayStdSec;
    if (scrCardiacAssociationCount != null)
      result.scrCardiacAssociationCount = scrCardiacAssociationCount;
    return result;
  }

  CouplingFeatures._();

  factory CouplingFeatures.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CouplingFeatures.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CouplingFeatures',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'rsaAmplitudeBpm')
    ..aD(2, _omitFieldNames ? '' : 'rsaAmplitudeRrSec')
    ..aD(3, _omitFieldNames ? '' : 'cardiacRespiratoryConcentration')
    ..aD(4, _omitFieldNames ? '' : 'cardiacRespiratoryMeanPhase')
    ..aD(5, _omitFieldNames ? '' : 'meanPulseDelaySec')
    ..aD(6, _omitFieldNames ? '' : 'pulseDelayStdSec')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'scrCardiacAssociationCount',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CouplingFeatures clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CouplingFeatures copyWith(void Function(CouplingFeatures) updates) =>
      super.copyWith((message) => updates(message as CouplingFeatures))
          as CouplingFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CouplingFeatures create() => CouplingFeatures._();
  @$core.override
  CouplingFeatures createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CouplingFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CouplingFeatures>(create);
  static CouplingFeatures? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rsaAmplitudeBpm => $_getN(0);
  @$pb.TagNumber(1)
  set rsaAmplitudeBpm($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRsaAmplitudeBpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearRsaAmplitudeBpm() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get rsaAmplitudeRrSec => $_getN(1);
  @$pb.TagNumber(2)
  set rsaAmplitudeRrSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRsaAmplitudeRrSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearRsaAmplitudeRrSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get cardiacRespiratoryConcentration => $_getN(2);
  @$pb.TagNumber(3)
  set cardiacRespiratoryConcentration($core.double value) =>
      $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCardiacRespiratoryConcentration() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardiacRespiratoryConcentration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get cardiacRespiratoryMeanPhase => $_getN(3);
  @$pb.TagNumber(4)
  set cardiacRespiratoryMeanPhase($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCardiacRespiratoryMeanPhase() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardiacRespiratoryMeanPhase() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get meanPulseDelaySec => $_getN(4);
  @$pb.TagNumber(5)
  set meanPulseDelaySec($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMeanPulseDelaySec() => $_has(4);
  @$pb.TagNumber(5)
  void clearMeanPulseDelaySec() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get pulseDelayStdSec => $_getN(5);
  @$pb.TagNumber(6)
  set pulseDelayStdSec($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPulseDelayStdSec() => $_has(5);
  @$pb.TagNumber(6)
  void clearPulseDelayStdSec() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get scrCardiacAssociationCount => $_getI64(6);
  @$pb.TagNumber(7)
  set scrCardiacAssociationCount($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasScrCardiacAssociationCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearScrCardiacAssociationCount() => $_clearField(7);
}

/// / Modality coverage breakdown matching lamina::features::quality::FeatureCoverage.
class FeatureCoverage extends $pb.GeneratedMessage {
  factory FeatureCoverage({
    $core.double? overall,
    $core.double? ecg,
    $core.double? ppg,
    $core.double? eda,
    $core.double? rsp,
  }) {
    final result = create();
    if (overall != null) result.overall = overall;
    if (ecg != null) result.ecg = ecg;
    if (ppg != null) result.ppg = ppg;
    if (eda != null) result.eda = eda;
    if (rsp != null) result.rsp = rsp;
    return result;
  }

  FeatureCoverage._();

  factory FeatureCoverage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureCoverage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureCoverage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'overall')
    ..aD(2, _omitFieldNames ? '' : 'ecg')
    ..aD(3, _omitFieldNames ? '' : 'ppg')
    ..aD(4, _omitFieldNames ? '' : 'eda')
    ..aD(5, _omitFieldNames ? '' : 'rsp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureCoverage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureCoverage copyWith(void Function(FeatureCoverage) updates) =>
      super.copyWith((message) => updates(message as FeatureCoverage))
          as FeatureCoverage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureCoverage create() => FeatureCoverage._();
  @$core.override
  FeatureCoverage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeatureCoverage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureCoverage>(create);
  static FeatureCoverage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get overall => $_getN(0);
  @$pb.TagNumber(1)
  set overall($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOverall() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverall() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get ecg => $_getN(1);
  @$pb.TagNumber(2)
  set ecg($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEcg() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get ppg => $_getN(2);
  @$pb.TagNumber(3)
  set ppg($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPpg() => $_has(2);
  @$pb.TagNumber(3)
  void clearPpg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get eda => $_getN(3);
  @$pb.TagNumber(4)
  set eda($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEda() => $_has(3);
  @$pb.TagNumber(4)
  void clearEda() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get rsp => $_getN(4);
  @$pb.TagNumber(5)
  set rsp($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRsp() => $_has(4);
  @$pb.TagNumber(5)
  void clearRsp() => $_clearField(5);
}

/// / Feature quality summary matching lamina::features::quality::FeatureQuality.
class FeatureQuality extends $pb.GeneratedMessage {
  factory FeatureQuality({
    $core.double? coverage,
    FeatureCoverage? modalityCoverage,
    $core.bool? cardiacValid,
    $core.bool? edaValid,
    $core.bool? respirationValid,
    $core.bool? couplingValid,
    $fixnum.Int64? usableFeatureCount,
    $fixnum.Int64? totalFeatureCount,
    $core.Iterable<FeatureQualityIssue>? issues,
  }) {
    final result = create();
    if (coverage != null) result.coverage = coverage;
    if (modalityCoverage != null) result.modalityCoverage = modalityCoverage;
    if (cardiacValid != null) result.cardiacValid = cardiacValid;
    if (edaValid != null) result.edaValid = edaValid;
    if (respirationValid != null) result.respirationValid = respirationValid;
    if (couplingValid != null) result.couplingValid = couplingValid;
    if (usableFeatureCount != null)
      result.usableFeatureCount = usableFeatureCount;
    if (totalFeatureCount != null) result.totalFeatureCount = totalFeatureCount;
    if (issues != null) result.issues.addAll(issues);
    return result;
  }

  FeatureQuality._();

  factory FeatureQuality.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeatureQuality.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeatureQuality',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'coverage')
    ..aOM<FeatureCoverage>(2, _omitFieldNames ? '' : 'modalityCoverage',
        subBuilder: FeatureCoverage.create)
    ..aOB(3, _omitFieldNames ? '' : 'cardiacValid')
    ..aOB(4, _omitFieldNames ? '' : 'edaValid')
    ..aOB(5, _omitFieldNames ? '' : 'respirationValid')
    ..aOB(6, _omitFieldNames ? '' : 'couplingValid')
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'usableFeatureCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'totalFeatureCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<FeatureQualityIssue>(
        9, _omitFieldNames ? '' : 'issues', $pb.PbFieldType.KE,
        valueOf: FeatureQualityIssue.valueOf,
        enumValues: FeatureQualityIssue.values,
        defaultEnumValue: FeatureQualityIssue.FEATURE_QUALITY_ISSUE_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureQuality clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeatureQuality copyWith(void Function(FeatureQuality) updates) =>
      super.copyWith((message) => updates(message as FeatureQuality))
          as FeatureQuality;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureQuality create() => FeatureQuality._();
  @$core.override
  FeatureQuality createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeatureQuality getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureQuality>(create);
  static FeatureQuality? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get coverage => $_getN(0);
  @$pb.TagNumber(1)
  set coverage($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCoverage() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoverage() => $_clearField(1);

  @$pb.TagNumber(2)
  FeatureCoverage get modalityCoverage => $_getN(1);
  @$pb.TagNumber(2)
  set modalityCoverage(FeatureCoverage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasModalityCoverage() => $_has(1);
  @$pb.TagNumber(2)
  void clearModalityCoverage() => $_clearField(2);
  @$pb.TagNumber(2)
  FeatureCoverage ensureModalityCoverage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get cardiacValid => $_getBF(2);
  @$pb.TagNumber(3)
  set cardiacValid($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCardiacValid() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardiacValid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get edaValid => $_getBF(3);
  @$pb.TagNumber(4)
  set edaValid($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEdaValid() => $_has(3);
  @$pb.TagNumber(4)
  void clearEdaValid() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get respirationValid => $_getBF(4);
  @$pb.TagNumber(5)
  set respirationValid($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRespirationValid() => $_has(4);
  @$pb.TagNumber(5)
  void clearRespirationValid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get couplingValid => $_getBF(5);
  @$pb.TagNumber(6)
  set couplingValid($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCouplingValid() => $_has(5);
  @$pb.TagNumber(6)
  void clearCouplingValid() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get usableFeatureCount => $_getI64(6);
  @$pb.TagNumber(7)
  set usableFeatureCount($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUsableFeatureCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsableFeatureCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get totalFeatureCount => $_getI64(7);
  @$pb.TagNumber(8)
  set totalFeatureCount($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTotalFeatureCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalFeatureCount() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<FeatureQualityIssue> get issues => $_getList(8);
}

/// / Unified windowed feature vector matching lamina::features::MultimodalFeatureVector.
class MultimodalFeatureVector extends $pb.GeneratedMessage {
  factory MultimodalFeatureVector({
    FeatureWindow? window,
    CardiacFeatures? cardiac,
    EdaFeatures? eda,
    RespirationFeatures? respiration,
    CouplingFeatures? coupling,
    FeatureQuality? quality,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (window != null) result.window = window;
    if (cardiac != null) result.cardiac = cardiac;
    if (eda != null) result.eda = eda;
    if (respiration != null) result.respiration = respiration;
    if (coupling != null) result.coupling = coupling;
    if (quality != null) result.quality = quality;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  MultimodalFeatureVector._();

  factory MultimodalFeatureVector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultimodalFeatureVector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultimodalFeatureVector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aOM<FeatureWindow>(1, _omitFieldNames ? '' : 'window',
        subBuilder: FeatureWindow.create)
    ..aOM<CardiacFeatures>(2, _omitFieldNames ? '' : 'cardiac',
        subBuilder: CardiacFeatures.create)
    ..aOM<EdaFeatures>(3, _omitFieldNames ? '' : 'eda',
        subBuilder: EdaFeatures.create)
    ..aOM<RespirationFeatures>(4, _omitFieldNames ? '' : 'respiration',
        subBuilder: RespirationFeatures.create)
    ..aOM<CouplingFeatures>(5, _omitFieldNames ? '' : 'coupling',
        subBuilder: CouplingFeatures.create)
    ..aOM<FeatureQuality>(6, _omitFieldNames ? '' : 'quality',
        subBuilder: FeatureQuality.create)
    ..aOM<DeviceMetadata>(7, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultimodalFeatureVector clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultimodalFeatureVector copyWith(
          void Function(MultimodalFeatureVector) updates) =>
      super.copyWith((message) => updates(message as MultimodalFeatureVector))
          as MultimodalFeatureVector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultimodalFeatureVector create() => MultimodalFeatureVector._();
  @$core.override
  MultimodalFeatureVector createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultimodalFeatureVector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultimodalFeatureVector>(create);
  static MultimodalFeatureVector? _defaultInstance;

  @$pb.TagNumber(1)
  FeatureWindow get window => $_getN(0);
  @$pb.TagNumber(1)
  set window(FeatureWindow value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWindow() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindow() => $_clearField(1);
  @$pb.TagNumber(1)
  FeatureWindow ensureWindow() => $_ensure(0);

  @$pb.TagNumber(2)
  CardiacFeatures get cardiac => $_getN(1);
  @$pb.TagNumber(2)
  set cardiac(CardiacFeatures value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCardiac() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardiac() => $_clearField(2);
  @$pb.TagNumber(2)
  CardiacFeatures ensureCardiac() => $_ensure(1);

  @$pb.TagNumber(3)
  EdaFeatures get eda => $_getN(2);
  @$pb.TagNumber(3)
  set eda(EdaFeatures value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEda() => $_has(2);
  @$pb.TagNumber(3)
  void clearEda() => $_clearField(3);
  @$pb.TagNumber(3)
  EdaFeatures ensureEda() => $_ensure(2);

  @$pb.TagNumber(4)
  RespirationFeatures get respiration => $_getN(3);
  @$pb.TagNumber(4)
  set respiration(RespirationFeatures value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRespiration() => $_has(3);
  @$pb.TagNumber(4)
  void clearRespiration() => $_clearField(4);
  @$pb.TagNumber(4)
  RespirationFeatures ensureRespiration() => $_ensure(3);

  @$pb.TagNumber(5)
  CouplingFeatures get coupling => $_getN(4);
  @$pb.TagNumber(5)
  set coupling(CouplingFeatures value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCoupling() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoupling() => $_clearField(5);
  @$pb.TagNumber(5)
  CouplingFeatures ensureCoupling() => $_ensure(4);

  @$pb.TagNumber(6)
  FeatureQuality get quality => $_getN(5);
  @$pb.TagNumber(6)
  set quality(FeatureQuality value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasQuality() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuality() => $_clearField(6);
  @$pb.TagNumber(6)
  FeatureQuality ensureQuality() => $_ensure(5);

  @$pb.TagNumber(7)
  DeviceMetadata get metadata => $_getN(6);
  @$pb.TagNumber(7)
  set metadata(DeviceMetadata value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMetadata() => $_has(6);
  @$pb.TagNumber(7)
  void clearMetadata() => $_clearField(7);
  @$pb.TagNumber(7)
  DeviceMetadata ensureMetadata() => $_ensure(6);
}

/// / Cardiac state evidence matching lamina::autonomic::state::CardiacState.
class CardiacState extends $pb.GeneratedMessage {
  factory CardiacState({
    $core.double? variabilityIndex,
    $core.double? heartRateIndex,
    $core.double? recoveryEvidence,
    $fixnum.Int64? beatCount,
  }) {
    final result = create();
    if (variabilityIndex != null) result.variabilityIndex = variabilityIndex;
    if (heartRateIndex != null) result.heartRateIndex = heartRateIndex;
    if (recoveryEvidence != null) result.recoveryEvidence = recoveryEvidence;
    if (beatCount != null) result.beatCount = beatCount;
    return result;
  }

  CardiacState._();

  factory CardiacState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardiacState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardiacState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'variabilityIndex')
    ..aD(2, _omitFieldNames ? '' : 'heartRateIndex')
    ..aD(3, _omitFieldNames ? '' : 'recoveryEvidence')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'beatCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardiacState copyWith(void Function(CardiacState) updates) =>
      super.copyWith((message) => updates(message as CardiacState))
          as CardiacState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardiacState create() => CardiacState._();
  @$core.override
  CardiacState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CardiacState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardiacState>(create);
  static CardiacState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get variabilityIndex => $_getN(0);
  @$pb.TagNumber(1)
  set variabilityIndex($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVariabilityIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariabilityIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get heartRateIndex => $_getN(1);
  @$pb.TagNumber(2)
  set heartRateIndex($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeartRateIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeartRateIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get recoveryEvidence => $_getN(2);
  @$pb.TagNumber(3)
  set recoveryEvidence($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecoveryEvidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecoveryEvidence() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get beatCount => $_getI64(3);
  @$pb.TagNumber(4)
  set beatCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBeatCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearBeatCount() => $_clearField(4);
}

/// / Electrodermal state evidence matching lamina::autonomic::state::ElectrodermalState.
class ElectrodermalState extends $pb.GeneratedMessage {
  factory ElectrodermalState({
    $core.double? tonicLevelIndex,
    $core.double? phasicActivationIndex,
    $core.double? scrRateIndex,
    $fixnum.Int64? scrCount,
  }) {
    final result = create();
    if (tonicLevelIndex != null) result.tonicLevelIndex = tonicLevelIndex;
    if (phasicActivationIndex != null)
      result.phasicActivationIndex = phasicActivationIndex;
    if (scrRateIndex != null) result.scrRateIndex = scrRateIndex;
    if (scrCount != null) result.scrCount = scrCount;
    return result;
  }

  ElectrodermalState._();

  factory ElectrodermalState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ElectrodermalState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ElectrodermalState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'tonicLevelIndex')
    ..aD(2, _omitFieldNames ? '' : 'phasicActivationIndex')
    ..aD(3, _omitFieldNames ? '' : 'scrRateIndex')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'scrCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrodermalState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrodermalState copyWith(void Function(ElectrodermalState) updates) =>
      super.copyWith((message) => updates(message as ElectrodermalState))
          as ElectrodermalState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ElectrodermalState create() => ElectrodermalState._();
  @$core.override
  ElectrodermalState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ElectrodermalState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ElectrodermalState>(create);
  static ElectrodermalState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get tonicLevelIndex => $_getN(0);
  @$pb.TagNumber(1)
  set tonicLevelIndex($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTonicLevelIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearTonicLevelIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get phasicActivationIndex => $_getN(1);
  @$pb.TagNumber(2)
  set phasicActivationIndex($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPhasicActivationIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhasicActivationIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get scrRateIndex => $_getN(2);
  @$pb.TagNumber(3)
  set scrRateIndex($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScrRateIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearScrRateIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get scrCount => $_getI64(3);
  @$pb.TagNumber(4)
  set scrCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasScrCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearScrCount() => $_clearField(4);
}

/// / Respiratory state evidence matching lamina::autonomic::state::RespiratoryState.
class RespiratoryState extends $pb.GeneratedMessage {
  factory RespiratoryState({
    $core.double? rateIndex,
    $core.double? amplitudeIndex,
    $core.double? regularityIndex,
    $fixnum.Int64? cycleCount,
  }) {
    final result = create();
    if (rateIndex != null) result.rateIndex = rateIndex;
    if (amplitudeIndex != null) result.amplitudeIndex = amplitudeIndex;
    if (regularityIndex != null) result.regularityIndex = regularityIndex;
    if (cycleCount != null) result.cycleCount = cycleCount;
    return result;
  }

  RespiratoryState._();

  factory RespiratoryState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RespiratoryState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RespiratoryState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'rateIndex')
    ..aD(2, _omitFieldNames ? '' : 'amplitudeIndex')
    ..aD(3, _omitFieldNames ? '' : 'regularityIndex')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'cycleCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespiratoryState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RespiratoryState copyWith(void Function(RespiratoryState) updates) =>
      super.copyWith((message) => updates(message as RespiratoryState))
          as RespiratoryState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RespiratoryState create() => RespiratoryState._();
  @$core.override
  RespiratoryState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RespiratoryState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RespiratoryState>(create);
  static RespiratoryState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rateIndex => $_getN(0);
  @$pb.TagNumber(1)
  set rateIndex($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRateIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearRateIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get amplitudeIndex => $_getN(1);
  @$pb.TagNumber(2)
  set amplitudeIndex($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmplitudeIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmplitudeIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get regularityIndex => $_getN(2);
  @$pb.TagNumber(3)
  set regularityIndex($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRegularityIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegularityIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get cycleCount => $_getI64(3);
  @$pb.TagNumber(4)
  set cycleCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCycleCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCycleCount() => $_clearField(4);
}

/// / Coupling state evidence matching lamina::autonomic::state::CouplingState.
class CouplingState extends $pb.GeneratedMessage {
  factory CouplingState({
    $core.double? resphrCouplingIndex,
    $core.double? phaseCouplingIndex,
    $core.double? pulseDelayIndex,
    $fixnum.Int64? associationCount,
  }) {
    final result = create();
    if (resphrCouplingIndex != null)
      result.resphrCouplingIndex = resphrCouplingIndex;
    if (phaseCouplingIndex != null)
      result.phaseCouplingIndex = phaseCouplingIndex;
    if (pulseDelayIndex != null) result.pulseDelayIndex = pulseDelayIndex;
    if (associationCount != null) result.associationCount = associationCount;
    return result;
  }

  CouplingState._();

  factory CouplingState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CouplingState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CouplingState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'resphrCouplingIndex')
    ..aD(2, _omitFieldNames ? '' : 'phaseCouplingIndex')
    ..aD(3, _omitFieldNames ? '' : 'pulseDelayIndex')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'associationCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CouplingState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CouplingState copyWith(void Function(CouplingState) updates) =>
      super.copyWith((message) => updates(message as CouplingState))
          as CouplingState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CouplingState create() => CouplingState._();
  @$core.override
  CouplingState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CouplingState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CouplingState>(create);
  static CouplingState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get resphrCouplingIndex => $_getN(0);
  @$pb.TagNumber(1)
  set resphrCouplingIndex($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasResphrCouplingIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearResphrCouplingIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get phaseCouplingIndex => $_getN(1);
  @$pb.TagNumber(2)
  set phaseCouplingIndex($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPhaseCouplingIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhaseCouplingIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get pulseDelayIndex => $_getN(2);
  @$pb.TagNumber(3)
  set pulseDelayIndex($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPulseDelayIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearPulseDelayIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get associationCount => $_getI64(3);
  @$pb.TagNumber(4)
  set associationCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssociationCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssociationCount() => $_clearField(4);
}

/// / Multi-tiered evidence confidence matching lamina::autonomic::confidence::StateConfidence.
class StateConfidence extends $pb.GeneratedMessage {
  factory StateConfidence({
    $core.double? overall,
    $core.double? cardiac,
    $core.double? electrodermal,
    $core.double? respiratory,
    $core.double? coupling,
  }) {
    final result = create();
    if (overall != null) result.overall = overall;
    if (cardiac != null) result.cardiac = cardiac;
    if (electrodermal != null) result.electrodermal = electrodermal;
    if (respiratory != null) result.respiratory = respiratory;
    if (coupling != null) result.coupling = coupling;
    return result;
  }

  StateConfidence._();

  factory StateConfidence.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StateConfidence.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StateConfidence',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'overall')
    ..aD(2, _omitFieldNames ? '' : 'cardiac')
    ..aD(3, _omitFieldNames ? '' : 'electrodermal')
    ..aD(4, _omitFieldNames ? '' : 'respiratory')
    ..aD(5, _omitFieldNames ? '' : 'coupling')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateConfidence clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StateConfidence copyWith(void Function(StateConfidence) updates) =>
      super.copyWith((message) => updates(message as StateConfidence))
          as StateConfidence;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateConfidence create() => StateConfidence._();
  @$core.override
  StateConfidence createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StateConfidence getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StateConfidence>(create);
  static StateConfidence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get overall => $_getN(0);
  @$pb.TagNumber(1)
  set overall($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOverall() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverall() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get cardiac => $_getN(1);
  @$pb.TagNumber(2)
  set cardiac($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCardiac() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardiac() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get electrodermal => $_getN(2);
  @$pb.TagNumber(3)
  set electrodermal($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasElectrodermal() => $_has(2);
  @$pb.TagNumber(3)
  void clearElectrodermal() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get respiratory => $_getN(3);
  @$pb.TagNumber(4)
  set respiratory($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRespiratory() => $_has(3);
  @$pb.TagNumber(4)
  void clearRespiratory() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get coupling => $_getN(4);
  @$pb.TagNumber(5)
  set coupling($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoupling() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoupling() => $_clearField(5);
}

/// / Interpretable autonomic state estimate matching lamina::autonomic::state::AutonomicState.
class AutonomicState extends $pb.GeneratedMessage {
  factory AutonomicState({
    $core.double? timestampSec,
    $core.double? durationSec,
    CardiacState? cardiac,
    ElectrodermalState? electrodermal,
    RespiratoryState? respiratory,
    CouplingState? coupling,
    $core.double? activationScore,
    $core.double? regulationScore,
    StateConfidence? confidence,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (timestampSec != null) result.timestampSec = timestampSec;
    if (durationSec != null) result.durationSec = durationSec;
    if (cardiac != null) result.cardiac = cardiac;
    if (electrodermal != null) result.electrodermal = electrodermal;
    if (respiratory != null) result.respiratory = respiratory;
    if (coupling != null) result.coupling = coupling;
    if (activationScore != null) result.activationScore = activationScore;
    if (regulationScore != null) result.regulationScore = regulationScore;
    if (confidence != null) result.confidence = confidence;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  AutonomicState._();

  factory AutonomicState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AutonomicState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AutonomicState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'timestampSec')
    ..aD(2, _omitFieldNames ? '' : 'durationSec')
    ..aOM<CardiacState>(3, _omitFieldNames ? '' : 'cardiac',
        subBuilder: CardiacState.create)
    ..aOM<ElectrodermalState>(4, _omitFieldNames ? '' : 'electrodermal',
        subBuilder: ElectrodermalState.create)
    ..aOM<RespiratoryState>(5, _omitFieldNames ? '' : 'respiratory',
        subBuilder: RespiratoryState.create)
    ..aOM<CouplingState>(6, _omitFieldNames ? '' : 'coupling',
        subBuilder: CouplingState.create)
    ..aD(7, _omitFieldNames ? '' : 'activationScore')
    ..aD(8, _omitFieldNames ? '' : 'regulationScore')
    ..aOM<StateConfidence>(9, _omitFieldNames ? '' : 'confidence',
        subBuilder: StateConfidence.create)
    ..aOM<DeviceMetadata>(10, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutonomicState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutonomicState copyWith(void Function(AutonomicState) updates) =>
      super.copyWith((message) => updates(message as AutonomicState))
          as AutonomicState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutonomicState create() => AutonomicState._();
  @$core.override
  AutonomicState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AutonomicState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutonomicState>(create);
  static AutonomicState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get timestampSec => $_getN(0);
  @$pb.TagNumber(1)
  set timestampSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get durationSec => $_getN(1);
  @$pb.TagNumber(2)
  set durationSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationSec() => $_clearField(2);

  @$pb.TagNumber(3)
  CardiacState get cardiac => $_getN(2);
  @$pb.TagNumber(3)
  set cardiac(CardiacState value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCardiac() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardiac() => $_clearField(3);
  @$pb.TagNumber(3)
  CardiacState ensureCardiac() => $_ensure(2);

  @$pb.TagNumber(4)
  ElectrodermalState get electrodermal => $_getN(3);
  @$pb.TagNumber(4)
  set electrodermal(ElectrodermalState value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasElectrodermal() => $_has(3);
  @$pb.TagNumber(4)
  void clearElectrodermal() => $_clearField(4);
  @$pb.TagNumber(4)
  ElectrodermalState ensureElectrodermal() => $_ensure(3);

  @$pb.TagNumber(5)
  RespiratoryState get respiratory => $_getN(4);
  @$pb.TagNumber(5)
  set respiratory(RespiratoryState value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRespiratory() => $_has(4);
  @$pb.TagNumber(5)
  void clearRespiratory() => $_clearField(5);
  @$pb.TagNumber(5)
  RespiratoryState ensureRespiratory() => $_ensure(4);

  @$pb.TagNumber(6)
  CouplingState get coupling => $_getN(5);
  @$pb.TagNumber(6)
  set coupling(CouplingState value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCoupling() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoupling() => $_clearField(6);
  @$pb.TagNumber(6)
  CouplingState ensureCoupling() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get activationScore => $_getN(6);
  @$pb.TagNumber(7)
  set activationScore($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasActivationScore() => $_has(6);
  @$pb.TagNumber(7)
  void clearActivationScore() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get regulationScore => $_getN(7);
  @$pb.TagNumber(8)
  set regulationScore($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRegulationScore() => $_has(7);
  @$pb.TagNumber(8)
  void clearRegulationScore() => $_clearField(8);

  @$pb.TagNumber(9)
  StateConfidence get confidence => $_getN(8);
  @$pb.TagNumber(9)
  set confidence(StateConfidence value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasConfidence() => $_has(8);
  @$pb.TagNumber(9)
  void clearConfidence() => $_clearField(9);
  @$pb.TagNumber(9)
  StateConfidence ensureConfidence() => $_ensure(8);

  @$pb.TagNumber(10)
  DeviceMetadata get metadata => $_getN(9);
  @$pb.TagNumber(10)
  set metadata(DeviceMetadata value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMetadata() => $_has(9);
  @$pb.TagNumber(10)
  void clearMetadata() => $_clearField(10);
  @$pb.TagNumber(10)
  DeviceMetadata ensureMetadata() => $_ensure(9);
}

/// / Bounding box ROI matching lamina::rppg::roi::Roi.
class Roi extends $pb.GeneratedMessage {
  factory Roi({
    $core.int? x,
    $core.int? y,
    $core.int? width,
    $core.int? height,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    return result;
  }

  Roi._();

  factory Roi.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Roi.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Roi',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'x', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'y', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Roi clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Roi copyWith(void Function(Roi) updates) =>
      super.copyWith((message) => updates(message as Roi)) as Roi;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Roi create() => Roi._();
  @$core.override
  Roi createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Roi getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Roi>(create);
  static Roi? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => $_clearField(4);
}

/// / Video metadata matching lamina::rppg::video::VideoMetadata.
class VideoMetadata extends $pb.GeneratedMessage {
  factory VideoMetadata({
    $core.int? width,
    $core.int? height,
    $core.double? fps,
    $fixnum.Int64? totalFrames,
    $core.double? durationSec,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (fps != null) result.fps = fps;
    if (totalFrames != null) result.totalFrames = totalFrames;
    if (durationSec != null) result.durationSec = durationSec;
    return result;
  }

  VideoMetadata._();

  factory VideoMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VideoMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aD(3, _omitFieldNames ? '' : 'fps')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'totalFrames', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aD(5, _omitFieldNames ? '' : 'durationSec')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoMetadata copyWith(void Function(VideoMetadata) updates) =>
      super.copyWith((message) => updates(message as VideoMetadata))
          as VideoMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoMetadata create() => VideoMetadata._();
  @$core.override
  VideoMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VideoMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoMetadata>(create);
  static VideoMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(1)
  set width($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get fps => $_getN(2);
  @$pb.TagNumber(3)
  set fps($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFps() => $_has(2);
  @$pb.TagNumber(3)
  void clearFps() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalFrames => $_getI64(3);
  @$pb.TagNumber(4)
  set totalFrames($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalFrames() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalFrames() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get durationSec => $_getN(4);
  @$pb.TagNumber(5)
  set durationSec($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDurationSec() => $_has(4);
  @$pb.TagNumber(5)
  void clearDurationSec() => $_clearField(5);
}

/// / Segment quality metrics matching lamina::rppg::quality::RppgSegmentQuality.
class RppgSegmentQuality extends $pb.GeneratedMessage {
  factory RppgSegmentQuality({
    $core.double? startSec,
    $core.double? endSec,
    $core.double? overall,
    $core.double? roiQuality,
    $core.double? motionQuality,
    $core.double? illuminationQuality,
    $core.double? signalQuality,
    $core.double? validFraction,
  }) {
    final result = create();
    if (startSec != null) result.startSec = startSec;
    if (endSec != null) result.endSec = endSec;
    if (overall != null) result.overall = overall;
    if (roiQuality != null) result.roiQuality = roiQuality;
    if (motionQuality != null) result.motionQuality = motionQuality;
    if (illuminationQuality != null)
      result.illuminationQuality = illuminationQuality;
    if (signalQuality != null) result.signalQuality = signalQuality;
    if (validFraction != null) result.validFraction = validFraction;
    return result;
  }

  RppgSegmentQuality._();

  factory RppgSegmentQuality.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RppgSegmentQuality.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RppgSegmentQuality',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startSec')
    ..aD(2, _omitFieldNames ? '' : 'endSec')
    ..aD(3, _omitFieldNames ? '' : 'overall')
    ..aD(4, _omitFieldNames ? '' : 'roiQuality')
    ..aD(5, _omitFieldNames ? '' : 'motionQuality')
    ..aD(6, _omitFieldNames ? '' : 'illuminationQuality')
    ..aD(7, _omitFieldNames ? '' : 'signalQuality')
    ..aD(8, _omitFieldNames ? '' : 'validFraction')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSegmentQuality clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSegmentQuality copyWith(void Function(RppgSegmentQuality) updates) =>
      super.copyWith((message) => updates(message as RppgSegmentQuality))
          as RppgSegmentQuality;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RppgSegmentQuality create() => RppgSegmentQuality._();
  @$core.override
  RppgSegmentQuality createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RppgSegmentQuality getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RppgSegmentQuality>(create);
  static RppgSegmentQuality? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get startSec => $_getN(0);
  @$pb.TagNumber(1)
  set startSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get endSec => $_getN(1);
  @$pb.TagNumber(2)
  set endSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get overall => $_getN(2);
  @$pb.TagNumber(3)
  set overall($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOverall() => $_has(2);
  @$pb.TagNumber(3)
  void clearOverall() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get roiQuality => $_getN(3);
  @$pb.TagNumber(4)
  set roiQuality($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRoiQuality() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoiQuality() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get motionQuality => $_getN(4);
  @$pb.TagNumber(5)
  set motionQuality($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMotionQuality() => $_has(4);
  @$pb.TagNumber(5)
  void clearMotionQuality() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get illuminationQuality => $_getN(5);
  @$pb.TagNumber(6)
  set illuminationQuality($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIlluminationQuality() => $_has(5);
  @$pb.TagNumber(6)
  void clearIlluminationQuality() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get signalQuality => $_getN(6);
  @$pb.TagNumber(7)
  set signalQuality($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSignalQuality() => $_has(6);
  @$pb.TagNumber(7)
  void clearSignalQuality() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get validFraction => $_getN(7);
  @$pb.TagNumber(8)
  set validFraction($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasValidFraction() => $_has(7);
  @$pb.TagNumber(8)
  void clearValidFraction() => $_clearField(8);
}

/// / Recording-wide rPPG quality summary matching lamina::rppg::quality::RppgQualitySummary.
class RppgQualitySummary extends $pb.GeneratedMessage {
  factory RppgQualitySummary({
    $core.double? overall,
    $core.double? validFraction,
    $core.Iterable<RppgSegmentQuality>? segments,
  }) {
    final result = create();
    if (overall != null) result.overall = overall;
    if (validFraction != null) result.validFraction = validFraction;
    if (segments != null) result.segments.addAll(segments);
    return result;
  }

  RppgQualitySummary._();

  factory RppgQualitySummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RppgQualitySummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RppgQualitySummary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'overall')
    ..aD(2, _omitFieldNames ? '' : 'validFraction')
    ..pPM<RppgSegmentQuality>(3, _omitFieldNames ? '' : 'segments',
        subBuilder: RppgSegmentQuality.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgQualitySummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgQualitySummary copyWith(void Function(RppgQualitySummary) updates) =>
      super.copyWith((message) => updates(message as RppgQualitySummary))
          as RppgQualitySummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RppgQualitySummary create() => RppgQualitySummary._();
  @$core.override
  RppgQualitySummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RppgQualitySummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RppgQualitySummary>(create);
  static RppgQualitySummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get overall => $_getN(0);
  @$pb.TagNumber(1)
  set overall($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOverall() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverall() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get validFraction => $_getN(1);
  @$pb.TagNumber(2)
  set validFraction($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValidFraction() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidFraction() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<RppgSegmentQuality> get segments => $_getList(2);
}

/// / Contiguous non-missing rPPG segment matching lamina::rppg::signal::RppgSegment.
class RppgSegment extends $pb.GeneratedMessage {
  factory RppgSegment({
    $core.double? startSec,
    $core.double? endSec,
    $core.double? samplingRateHz,
    $core.Iterable<$core.double>? samples,
  }) {
    final result = create();
    if (startSec != null) result.startSec = startSec;
    if (endSec != null) result.endSec = endSec;
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (samples != null) result.samples.addAll(samples);
    return result;
  }

  RppgSegment._();

  factory RppgSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RppgSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RppgSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startSec')
    ..aD(2, _omitFieldNames ? '' : 'endSec')
    ..aD(3, _omitFieldNames ? '' : 'samplingRateHz')
    ..p<$core.double>(4, _omitFieldNames ? '' : 'samples', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSegment copyWith(void Function(RppgSegment) updates) =>
      super.copyWith((message) => updates(message as RppgSegment))
          as RppgSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RppgSegment create() => RppgSegment._();
  @$core.override
  RppgSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RppgSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RppgSegment>(create);
  static RppgSegment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get startSec => $_getN(0);
  @$pb.TagNumber(1)
  set startSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get endSec => $_getN(1);
  @$pb.TagNumber(2)
  set endSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get samplingRateHz => $_getN(2);
  @$pb.TagNumber(3)
  set samplingRateHz($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSamplingRateHz() => $_has(2);
  @$pb.TagNumber(3)
  void clearSamplingRateHz() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.double> get samples => $_getList(3);
}

/// / Complete rPPG pulse signal output matching lamina::rppg::signal::RppgSignal.
class RppgSignal extends $pb.GeneratedMessage {
  factory RppgSignal({
    $core.double? startSec,
    $core.double? samplingRateHz,
    $core.Iterable<$core.double>? pulseSamples,
    $core.Iterable<RppgSegment>? validSegments,
    RppgQualitySummary? quality,
    DeviceMetadata? metadata,
  }) {
    final result = create();
    if (startSec != null) result.startSec = startSec;
    if (samplingRateHz != null) result.samplingRateHz = samplingRateHz;
    if (pulseSamples != null) result.pulseSamples.addAll(pulseSamples);
    if (validSegments != null) result.validSegments.addAll(validSegments);
    if (quality != null) result.quality = quality;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  RppgSignal._();

  factory RppgSignal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RppgSignal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RppgSignal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startSec')
    ..aD(2, _omitFieldNames ? '' : 'samplingRateHz')
    ..p<$core.double>(
        3, _omitFieldNames ? '' : 'pulseSamples', $pb.PbFieldType.KD)
    ..pPM<RppgSegment>(4, _omitFieldNames ? '' : 'validSegments',
        subBuilder: RppgSegment.create)
    ..aOM<RppgQualitySummary>(5, _omitFieldNames ? '' : 'quality',
        subBuilder: RppgQualitySummary.create)
    ..aOM<DeviceMetadata>(6, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSignal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RppgSignal copyWith(void Function(RppgSignal) updates) =>
      super.copyWith((message) => updates(message as RppgSignal)) as RppgSignal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RppgSignal create() => RppgSignal._();
  @$core.override
  RppgSignal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RppgSignal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RppgSignal>(create);
  static RppgSignal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get startSec => $_getN(0);
  @$pb.TagNumber(1)
  set startSec($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartSec() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartSec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get samplingRateHz => $_getN(1);
  @$pb.TagNumber(2)
  set samplingRateHz($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSamplingRateHz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingRateHz() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get pulseSamples => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<RppgSegment> get validSegments => $_getList(3);

  @$pb.TagNumber(5)
  RppgQualitySummary get quality => $_getN(4);
  @$pb.TagNumber(5)
  set quality(RppgQualitySummary value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasQuality() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuality() => $_clearField(5);
  @$pb.TagNumber(5)
  RppgQualitySummary ensureQuality() => $_ensure(4);

  @$pb.TagNumber(6)
  DeviceMetadata get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata(DeviceMetadata value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => $_clearField(6);
  @$pb.TagNumber(6)
  DeviceMetadata ensureMetadata() => $_ensure(5);
}

enum SensorDataContainer_Payload {
  rawSignal,
  multiChannelSignal,
  singleMeasurement,
  bloodPressure,
  cardiacPeaks,
  scrEvents,
  respirationCycles,
  pulseTimings,
  rsaResults,
  featureVector,
  autonomicState,
  rppgSignal,
  notSet
}

/// / Flexible, strongly-typed envelope container for sensor streams & derived metrics.
class SensorDataContainer extends $pb.GeneratedMessage {
  factory SensorDataContainer({
    DeviceMetadata? metadata,
    $0.Timestamp? packetTimestamp,
    ContinuousSignalBatch? rawSignal,
    MultiChannelSignalBatch? multiChannelSignal,
    SinglePointMeasurement? singleMeasurement,
    BloodPressureMeasurement? bloodPressure,
    CardiacPeakBatch? cardiacPeaks,
    ScrEventBatch? scrEvents,
    RespirationCycleBatch? respirationCycles,
    PulseTimingBatch? pulseTimings,
    RsaBatch? rsaResults,
    MultimodalFeatureVector? featureVector,
    AutonomicState? autonomicState,
    RppgSignal? rppgSignal,
  }) {
    final result = create();
    if (metadata != null) result.metadata = metadata;
    if (packetTimestamp != null) result.packetTimestamp = packetTimestamp;
    if (rawSignal != null) result.rawSignal = rawSignal;
    if (multiChannelSignal != null)
      result.multiChannelSignal = multiChannelSignal;
    if (singleMeasurement != null) result.singleMeasurement = singleMeasurement;
    if (bloodPressure != null) result.bloodPressure = bloodPressure;
    if (cardiacPeaks != null) result.cardiacPeaks = cardiacPeaks;
    if (scrEvents != null) result.scrEvents = scrEvents;
    if (respirationCycles != null) result.respirationCycles = respirationCycles;
    if (pulseTimings != null) result.pulseTimings = pulseTimings;
    if (rsaResults != null) result.rsaResults = rsaResults;
    if (featureVector != null) result.featureVector = featureVector;
    if (autonomicState != null) result.autonomicState = autonomicState;
    if (rppgSignal != null) result.rppgSignal = rppgSignal;
    return result;
  }

  SensorDataContainer._();

  factory SensorDataContainer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorDataContainer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SensorDataContainer_Payload>
      _SensorDataContainer_PayloadByTag = {
    10: SensorDataContainer_Payload.rawSignal,
    11: SensorDataContainer_Payload.multiChannelSignal,
    12: SensorDataContainer_Payload.singleMeasurement,
    13: SensorDataContainer_Payload.bloodPressure,
    14: SensorDataContainer_Payload.cardiacPeaks,
    15: SensorDataContainer_Payload.scrEvents,
    16: SensorDataContainer_Payload.respirationCycles,
    17: SensorDataContainer_Payload.pulseTimings,
    18: SensorDataContainer_Payload.rsaResults,
    19: SensorDataContainer_Payload.featureVector,
    20: SensorDataContainer_Payload.autonomicState,
    21: SensorDataContainer_Payload.rppgSignal,
    0: SensorDataContainer_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorDataContainer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'roeh.sensor.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..aOM<DeviceMetadata>(1, _omitFieldNames ? '' : 'metadata',
        subBuilder: DeviceMetadata.create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'packetTimestamp',
        subBuilder: $0.Timestamp.create)
    ..aOM<ContinuousSignalBatch>(10, _omitFieldNames ? '' : 'rawSignal',
        subBuilder: ContinuousSignalBatch.create)
    ..aOM<MultiChannelSignalBatch>(
        11, _omitFieldNames ? '' : 'multiChannelSignal',
        subBuilder: MultiChannelSignalBatch.create)
    ..aOM<SinglePointMeasurement>(
        12, _omitFieldNames ? '' : 'singleMeasurement',
        subBuilder: SinglePointMeasurement.create)
    ..aOM<BloodPressureMeasurement>(13, _omitFieldNames ? '' : 'bloodPressure',
        subBuilder: BloodPressureMeasurement.create)
    ..aOM<CardiacPeakBatch>(14, _omitFieldNames ? '' : 'cardiacPeaks',
        subBuilder: CardiacPeakBatch.create)
    ..aOM<ScrEventBatch>(15, _omitFieldNames ? '' : 'scrEvents',
        subBuilder: ScrEventBatch.create)
    ..aOM<RespirationCycleBatch>(16, _omitFieldNames ? '' : 'respirationCycles',
        subBuilder: RespirationCycleBatch.create)
    ..aOM<PulseTimingBatch>(17, _omitFieldNames ? '' : 'pulseTimings',
        subBuilder: PulseTimingBatch.create)
    ..aOM<RsaBatch>(18, _omitFieldNames ? '' : 'rsaResults',
        subBuilder: RsaBatch.create)
    ..aOM<MultimodalFeatureVector>(19, _omitFieldNames ? '' : 'featureVector',
        subBuilder: MultimodalFeatureVector.create)
    ..aOM<AutonomicState>(20, _omitFieldNames ? '' : 'autonomicState',
        subBuilder: AutonomicState.create)
    ..aOM<RppgSignal>(21, _omitFieldNames ? '' : 'rppgSignal',
        subBuilder: RppgSignal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorDataContainer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorDataContainer copyWith(void Function(SensorDataContainer) updates) =>
      super.copyWith((message) => updates(message as SensorDataContainer))
          as SensorDataContainer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorDataContainer create() => SensorDataContainer._();
  @$core.override
  SensorDataContainer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorDataContainer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorDataContainer>(create);
  static SensorDataContainer? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  SensorDataContainer_Payload whichPayload() =>
      _SensorDataContainer_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DeviceMetadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(DeviceMetadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  DeviceMetadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Timestamp get packetTimestamp => $_getN(1);
  @$pb.TagNumber(2)
  set packetTimestamp($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPacketTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearPacketTimestamp() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensurePacketTimestamp() => $_ensure(1);

  /// Raw and continuous signals
  @$pb.TagNumber(10)
  ContinuousSignalBatch get rawSignal => $_getN(2);
  @$pb.TagNumber(10)
  set rawSignal(ContinuousSignalBatch value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRawSignal() => $_has(2);
  @$pb.TagNumber(10)
  void clearRawSignal() => $_clearField(10);
  @$pb.TagNumber(10)
  ContinuousSignalBatch ensureRawSignal() => $_ensure(2);

  @$pb.TagNumber(11)
  MultiChannelSignalBatch get multiChannelSignal => $_getN(3);
  @$pb.TagNumber(11)
  set multiChannelSignal(MultiChannelSignalBatch value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMultiChannelSignal() => $_has(3);
  @$pb.TagNumber(11)
  void clearMultiChannelSignal() => $_clearField(11);
  @$pb.TagNumber(11)
  MultiChannelSignalBatch ensureMultiChannelSignal() => $_ensure(3);

  @$pb.TagNumber(12)
  SinglePointMeasurement get singleMeasurement => $_getN(4);
  @$pb.TagNumber(12)
  set singleMeasurement(SinglePointMeasurement value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSingleMeasurement() => $_has(4);
  @$pb.TagNumber(12)
  void clearSingleMeasurement() => $_clearField(12);
  @$pb.TagNumber(12)
  SinglePointMeasurement ensureSingleMeasurement() => $_ensure(4);

  @$pb.TagNumber(13)
  BloodPressureMeasurement get bloodPressure => $_getN(5);
  @$pb.TagNumber(13)
  set bloodPressure(BloodPressureMeasurement value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasBloodPressure() => $_has(5);
  @$pb.TagNumber(13)
  void clearBloodPressure() => $_clearField(13);
  @$pb.TagNumber(13)
  BloodPressureMeasurement ensureBloodPressure() => $_ensure(5);

  /// Lamina extracted events
  @$pb.TagNumber(14)
  CardiacPeakBatch get cardiacPeaks => $_getN(6);
  @$pb.TagNumber(14)
  set cardiacPeaks(CardiacPeakBatch value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasCardiacPeaks() => $_has(6);
  @$pb.TagNumber(14)
  void clearCardiacPeaks() => $_clearField(14);
  @$pb.TagNumber(14)
  CardiacPeakBatch ensureCardiacPeaks() => $_ensure(6);

  @$pb.TagNumber(15)
  ScrEventBatch get scrEvents => $_getN(7);
  @$pb.TagNumber(15)
  set scrEvents(ScrEventBatch value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasScrEvents() => $_has(7);
  @$pb.TagNumber(15)
  void clearScrEvents() => $_clearField(15);
  @$pb.TagNumber(15)
  ScrEventBatch ensureScrEvents() => $_ensure(7);

  @$pb.TagNumber(16)
  RespirationCycleBatch get respirationCycles => $_getN(8);
  @$pb.TagNumber(16)
  set respirationCycles(RespirationCycleBatch value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasRespirationCycles() => $_has(8);
  @$pb.TagNumber(16)
  void clearRespirationCycles() => $_clearField(16);
  @$pb.TagNumber(16)
  RespirationCycleBatch ensureRespirationCycles() => $_ensure(8);

  @$pb.TagNumber(17)
  PulseTimingBatch get pulseTimings => $_getN(9);
  @$pb.TagNumber(17)
  set pulseTimings(PulseTimingBatch value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPulseTimings() => $_has(9);
  @$pb.TagNumber(17)
  void clearPulseTimings() => $_clearField(17);
  @$pb.TagNumber(17)
  PulseTimingBatch ensurePulseTimings() => $_ensure(9);

  @$pb.TagNumber(18)
  RsaBatch get rsaResults => $_getN(10);
  @$pb.TagNumber(18)
  set rsaResults(RsaBatch value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasRsaResults() => $_has(10);
  @$pb.TagNumber(18)
  void clearRsaResults() => $_clearField(18);
  @$pb.TagNumber(18)
  RsaBatch ensureRsaResults() => $_ensure(10);

  /// Lamina feature vector & autonomic state
  @$pb.TagNumber(19)
  MultimodalFeatureVector get featureVector => $_getN(11);
  @$pb.TagNumber(19)
  set featureVector(MultimodalFeatureVector value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasFeatureVector() => $_has(11);
  @$pb.TagNumber(19)
  void clearFeatureVector() => $_clearField(19);
  @$pb.TagNumber(19)
  MultimodalFeatureVector ensureFeatureVector() => $_ensure(11);

  @$pb.TagNumber(20)
  AutonomicState get autonomicState => $_getN(12);
  @$pb.TagNumber(20)
  set autonomicState(AutonomicState value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasAutonomicState() => $_has(12);
  @$pb.TagNumber(20)
  void clearAutonomicState() => $_clearField(20);
  @$pb.TagNumber(20)
  AutonomicState ensureAutonomicState() => $_ensure(12);

  /// rPPG optical substrate
  @$pb.TagNumber(21)
  RppgSignal get rppgSignal => $_getN(13);
  @$pb.TagNumber(21)
  set rppgSignal(RppgSignal value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasRppgSignal() => $_has(13);
  @$pb.TagNumber(21)
  void clearRppgSignal() => $_clearField(21);
  @$pb.TagNumber(21)
  RppgSignal ensureRppgSignal() => $_ensure(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
