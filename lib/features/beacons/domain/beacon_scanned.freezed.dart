// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beacon_scanned.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeaconScanned _$BeaconScannedFromJson(Map<String, dynamic> json) {
  return _BeaconScanned.fromJson(json);
}

/// @nodoc
mixin _$BeaconScanned {
  String? get name => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  String get minor => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get proximity => throw _privateConstructorUsedError;
  String? get rssi => throw _privateConstructorUsedError;
  String? get txPower => throw _privateConstructorUsedError;
  String? get scanTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeaconScannedCopyWith<BeaconScanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeaconScannedCopyWith<$Res> {
  factory $BeaconScannedCopyWith(
          BeaconScanned value, $Res Function(BeaconScanned) then) =
      _$BeaconScannedCopyWithImpl<$Res, BeaconScanned>;
  @useResult
  $Res call(
      {String? name,
      String uuid,
      String major,
      String minor,
      String? distance,
      String? proximity,
      String? rssi,
      String? txPower,
      String? scanTime});
}

/// @nodoc
class _$BeaconScannedCopyWithImpl<$Res, $Val extends BeaconScanned>
    implements $BeaconScannedCopyWith<$Res> {
  _$BeaconScannedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
    Object? distance = freezed,
    Object? proximity = freezed,
    Object? rssi = freezed,
    Object? txPower = freezed,
    Object? scanTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as String,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      proximity: freezed == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as String?,
      txPower: freezed == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as String?,
      scanTime: freezed == scanTime
          ? _value.scanTime
          : scanTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeaconScannedImplCopyWith<$Res>
    implements $BeaconScannedCopyWith<$Res> {
  factory _$$BeaconScannedImplCopyWith(
          _$BeaconScannedImpl value, $Res Function(_$BeaconScannedImpl) then) =
      __$$BeaconScannedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String uuid,
      String major,
      String minor,
      String? distance,
      String? proximity,
      String? rssi,
      String? txPower,
      String? scanTime});
}

/// @nodoc
class __$$BeaconScannedImplCopyWithImpl<$Res>
    extends _$BeaconScannedCopyWithImpl<$Res, _$BeaconScannedImpl>
    implements _$$BeaconScannedImplCopyWith<$Res> {
  __$$BeaconScannedImplCopyWithImpl(
      _$BeaconScannedImpl _value, $Res Function(_$BeaconScannedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
    Object? distance = freezed,
    Object? proximity = freezed,
    Object? rssi = freezed,
    Object? txPower = freezed,
    Object? scanTime = freezed,
  }) {
    return _then(_$BeaconScannedImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as String,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      proximity: freezed == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as String?,
      txPower: freezed == txPower
          ? _value.txPower
          : txPower // ignore: cast_nullable_to_non_nullable
              as String?,
      scanTime: freezed == scanTime
          ? _value.scanTime
          : scanTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BeaconScannedImpl implements _BeaconScanned {
  const _$BeaconScannedImpl(
      {this.name,
      required this.uuid,
      required this.major,
      required this.minor,
      this.distance,
      this.proximity,
      this.rssi,
      this.txPower,
      this.scanTime});

  factory _$BeaconScannedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeaconScannedImplFromJson(json);

  @override
  final String? name;
  @override
  final String uuid;
  @override
  final String major;
  @override
  final String minor;
  @override
  final String? distance;
  @override
  final String? proximity;
  @override
  final String? rssi;
  @override
  final String? txPower;
  @override
  final String? scanTime;

  @override
  String toString() {
    return 'BeaconScanned(name: $name, uuid: $uuid, major: $major, minor: $minor, distance: $distance, proximity: $proximity, rssi: $rssi, txPower: $txPower, scanTime: $scanTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeaconScannedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.proximity, proximity) ||
                other.proximity == proximity) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.txPower, txPower) || other.txPower == txPower) &&
            (identical(other.scanTime, scanTime) ||
                other.scanTime == scanTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid, major, minor,
      distance, proximity, rssi, txPower, scanTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeaconScannedImplCopyWith<_$BeaconScannedImpl> get copyWith =>
      __$$BeaconScannedImplCopyWithImpl<_$BeaconScannedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeaconScannedImplToJson(
      this,
    );
  }
}

abstract class _BeaconScanned implements BeaconScanned {
  const factory _BeaconScanned(
      {final String? name,
      required final String uuid,
      required final String major,
      required final String minor,
      final String? distance,
      final String? proximity,
      final String? rssi,
      final String? txPower,
      final String? scanTime}) = _$BeaconScannedImpl;

  factory _BeaconScanned.fromJson(Map<String, dynamic> json) =
      _$BeaconScannedImpl.fromJson;

  @override
  String? get name;
  @override
  String get uuid;
  @override
  String get major;
  @override
  String get minor;
  @override
  String? get distance;
  @override
  String? get proximity;
  @override
  String? get rssi;
  @override
  String? get txPower;
  @override
  String? get scanTime;
  @override
  @JsonKey(ignore: true)
  _$$BeaconScannedImplCopyWith<_$BeaconScannedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
