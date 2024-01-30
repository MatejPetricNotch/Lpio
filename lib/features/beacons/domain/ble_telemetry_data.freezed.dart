// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_telemetry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BleTelemetryData _$BleTelemetryDataFromJson(Map<String, dynamic> json) {
  return _BleTelemetryData.fromJson(json);
}

/// @nodoc
mixin _$BleTelemetryData {
  String get uuid => throw _privateConstructorUsedError;
  int get majNum => throw _privateConstructorUsedError;
  int get minNum => throw _privateConstructorUsedError;
  int get tx => throw _privateConstructorUsedError;
  int get rssi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleTelemetryDataCopyWith<BleTelemetryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleTelemetryDataCopyWith<$Res> {
  factory $BleTelemetryDataCopyWith(
          BleTelemetryData value, $Res Function(BleTelemetryData) then) =
      _$BleTelemetryDataCopyWithImpl<$Res, BleTelemetryData>;
  @useResult
  $Res call({String uuid, int majNum, int minNum, int tx, int rssi});
}

/// @nodoc
class _$BleTelemetryDataCopyWithImpl<$Res, $Val extends BleTelemetryData>
    implements $BleTelemetryDataCopyWith<$Res> {
  _$BleTelemetryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? majNum = null,
    Object? minNum = null,
    Object? tx = null,
    Object? rssi = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      majNum: null == majNum
          ? _value.majNum
          : majNum // ignore: cast_nullable_to_non_nullable
              as int,
      minNum: null == minNum
          ? _value.minNum
          : minNum // ignore: cast_nullable_to_non_nullable
              as int,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as int,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleTelemetryDataImplCopyWith<$Res>
    implements $BleTelemetryDataCopyWith<$Res> {
  factory _$$BleTelemetryDataImplCopyWith(_$BleTelemetryDataImpl value,
          $Res Function(_$BleTelemetryDataImpl) then) =
      __$$BleTelemetryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, int majNum, int minNum, int tx, int rssi});
}

/// @nodoc
class __$$BleTelemetryDataImplCopyWithImpl<$Res>
    extends _$BleTelemetryDataCopyWithImpl<$Res, _$BleTelemetryDataImpl>
    implements _$$BleTelemetryDataImplCopyWith<$Res> {
  __$$BleTelemetryDataImplCopyWithImpl(_$BleTelemetryDataImpl _value,
      $Res Function(_$BleTelemetryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? majNum = null,
    Object? minNum = null,
    Object? tx = null,
    Object? rssi = null,
  }) {
    return _then(_$BleTelemetryDataImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      majNum: null == majNum
          ? _value.majNum
          : majNum // ignore: cast_nullable_to_non_nullable
              as int,
      minNum: null == minNum
          ? _value.minNum
          : minNum // ignore: cast_nullable_to_non_nullable
              as int,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as int,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BleTelemetryDataImpl implements _BleTelemetryData {
  const _$BleTelemetryDataImpl(
      {required this.uuid,
      required this.majNum,
      required this.minNum,
      required this.tx,
      required this.rssi});

  factory _$BleTelemetryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BleTelemetryDataImplFromJson(json);

  @override
  final String uuid;
  @override
  final int majNum;
  @override
  final int minNum;
  @override
  final int tx;
  @override
  final int rssi;

  @override
  String toString() {
    return 'BleTelemetryData(uuid: $uuid, majNum: $majNum, minNum: $minNum, tx: $tx, rssi: $rssi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleTelemetryDataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.majNum, majNum) || other.majNum == majNum) &&
            (identical(other.minNum, minNum) || other.minNum == minNum) &&
            (identical(other.tx, tx) || other.tx == tx) &&
            (identical(other.rssi, rssi) || other.rssi == rssi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, majNum, minNum, tx, rssi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleTelemetryDataImplCopyWith<_$BleTelemetryDataImpl> get copyWith =>
      __$$BleTelemetryDataImplCopyWithImpl<_$BleTelemetryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BleTelemetryDataImplToJson(
      this,
    );
  }
}

abstract class _BleTelemetryData implements BleTelemetryData {
  const factory _BleTelemetryData(
      {required final String uuid,
      required final int majNum,
      required final int minNum,
      required final int tx,
      required final int rssi}) = _$BleTelemetryDataImpl;

  factory _BleTelemetryData.fromJson(Map<String, dynamic> json) =
      _$BleTelemetryDataImpl.fromJson;

  @override
  String get uuid;
  @override
  int get majNum;
  @override
  int get minNum;
  @override
  int get tx;
  @override
  int get rssi;
  @override
  @JsonKey(ignore: true)
  _$$BleTelemetryDataImplCopyWith<_$BleTelemetryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
