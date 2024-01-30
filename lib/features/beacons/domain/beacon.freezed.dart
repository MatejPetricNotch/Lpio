// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beacon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beacon _$BeaconFromJson(Map<String, dynamic> json) {
  return _Beacon.fromJson(json);
}

/// @nodoc
mixin _$Beacon {
  String get name => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  String get minor => throw _privateConstructorUsedError;
  String get rssi => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  String get proximity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeaconCopyWith<Beacon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeaconCopyWith<$Res> {
  factory $BeaconCopyWith(Beacon value, $Res Function(Beacon) then) =
      _$BeaconCopyWithImpl<$Res, Beacon>;
  @useResult
  $Res call(
      {String name,
      String uuid,
      String major,
      String minor,
      String rssi,
      String distance,
      String proximity});
}

/// @nodoc
class _$BeaconCopyWithImpl<$Res, $Val extends Beacon>
    implements $BeaconCopyWith<$Res> {
  _$BeaconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
    Object? rssi = null,
    Object? distance = null,
    Object? proximity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      proximity: null == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeaconImplCopyWith<$Res> implements $BeaconCopyWith<$Res> {
  factory _$$BeaconImplCopyWith(
          _$BeaconImpl value, $Res Function(_$BeaconImpl) then) =
      __$$BeaconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String uuid,
      String major,
      String minor,
      String rssi,
      String distance,
      String proximity});
}

/// @nodoc
class __$$BeaconImplCopyWithImpl<$Res>
    extends _$BeaconCopyWithImpl<$Res, _$BeaconImpl>
    implements _$$BeaconImplCopyWith<$Res> {
  __$$BeaconImplCopyWithImpl(
      _$BeaconImpl _value, $Res Function(_$BeaconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? major = null,
    Object? minor = null,
    Object? rssi = null,
    Object? distance = null,
    Object? proximity = null,
  }) {
    return _then(_$BeaconImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      proximity: null == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BeaconImpl implements _Beacon {
  const _$BeaconImpl(
      {required this.name,
      required this.uuid,
      required this.major,
      required this.minor,
      required this.rssi,
      required this.distance,
      required this.proximity});

  factory _$BeaconImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeaconImplFromJson(json);

  @override
  final String name;
  @override
  final String uuid;
  @override
  final String major;
  @override
  final String minor;
  @override
  final String rssi;
  @override
  final String distance;
  @override
  final String proximity;

  @override
  String toString() {
    return 'Beacon(name: $name, uuid: $uuid, major: $major, minor: $minor, rssi: $rssi, distance: $distance, proximity: $proximity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeaconImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.proximity, proximity) ||
                other.proximity == proximity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, uuid, major, minor, rssi, distance, proximity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeaconImplCopyWith<_$BeaconImpl> get copyWith =>
      __$$BeaconImplCopyWithImpl<_$BeaconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeaconImplToJson(
      this,
    );
  }
}

abstract class _Beacon implements Beacon {
  const factory _Beacon(
      {required final String name,
      required final String uuid,
      required final String major,
      required final String minor,
      required final String rssi,
      required final String distance,
      required final String proximity}) = _$BeaconImpl;

  factory _Beacon.fromJson(Map<String, dynamic> json) = _$BeaconImpl.fromJson;

  @override
  String get name;
  @override
  String get uuid;
  @override
  String get major;
  @override
  String get minor;
  @override
  String get rssi;
  @override
  String get distance;
  @override
  String get proximity;
  @override
  @JsonKey(ignore: true)
  _$$BeaconImplCopyWith<_$BeaconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
