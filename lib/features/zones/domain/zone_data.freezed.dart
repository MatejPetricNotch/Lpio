// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZoneData _$ZoneDataFromJson(Map<String, dynamic> json) {
  return _ZoneData.fromJson(json);
}

/// @nodoc
mixin _$ZoneData {
  int get id => throw _privateConstructorUsedError;
  String get firstTimeSeen => throw _privateConstructorUsedError;
  String get lastTimeSeen => throw _privateConstructorUsedError;
  Zone get zone => throw _privateConstructorUsedError;
  BleClient get bleClient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZoneDataCopyWith<ZoneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneDataCopyWith<$Res> {
  factory $ZoneDataCopyWith(ZoneData value, $Res Function(ZoneData) then) =
      _$ZoneDataCopyWithImpl<$Res, ZoneData>;
  @useResult
  $Res call(
      {int id,
      String firstTimeSeen,
      String lastTimeSeen,
      Zone zone,
      BleClient bleClient});

  $ZoneCopyWith<$Res> get zone;
  $BleClientCopyWith<$Res> get bleClient;
}

/// @nodoc
class _$ZoneDataCopyWithImpl<$Res, $Val extends ZoneData>
    implements $ZoneDataCopyWith<$Res> {
  _$ZoneDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstTimeSeen = null,
    Object? lastTimeSeen = null,
    Object? zone = null,
    Object? bleClient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstTimeSeen: null == firstTimeSeen
          ? _value.firstTimeSeen
          : firstTimeSeen // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimeSeen: null == lastTimeSeen
          ? _value.lastTimeSeen
          : lastTimeSeen // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as Zone,
      bleClient: null == bleClient
          ? _value.bleClient
          : bleClient // ignore: cast_nullable_to_non_nullable
              as BleClient,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZoneCopyWith<$Res> get zone {
    return $ZoneCopyWith<$Res>(_value.zone, (value) {
      return _then(_value.copyWith(zone: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BleClientCopyWith<$Res> get bleClient {
    return $BleClientCopyWith<$Res>(_value.bleClient, (value) {
      return _then(_value.copyWith(bleClient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZoneDataImplCopyWith<$Res>
    implements $ZoneDataCopyWith<$Res> {
  factory _$$ZoneDataImplCopyWith(
          _$ZoneDataImpl value, $Res Function(_$ZoneDataImpl) then) =
      __$$ZoneDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstTimeSeen,
      String lastTimeSeen,
      Zone zone,
      BleClient bleClient});

  @override
  $ZoneCopyWith<$Res> get zone;
  @override
  $BleClientCopyWith<$Res> get bleClient;
}

/// @nodoc
class __$$ZoneDataImplCopyWithImpl<$Res>
    extends _$ZoneDataCopyWithImpl<$Res, _$ZoneDataImpl>
    implements _$$ZoneDataImplCopyWith<$Res> {
  __$$ZoneDataImplCopyWithImpl(
      _$ZoneDataImpl _value, $Res Function(_$ZoneDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstTimeSeen = null,
    Object? lastTimeSeen = null,
    Object? zone = null,
    Object? bleClient = null,
  }) {
    return _then(_$ZoneDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstTimeSeen: null == firstTimeSeen
          ? _value.firstTimeSeen
          : firstTimeSeen // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimeSeen: null == lastTimeSeen
          ? _value.lastTimeSeen
          : lastTimeSeen // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as Zone,
      bleClient: null == bleClient
          ? _value.bleClient
          : bleClient // ignore: cast_nullable_to_non_nullable
              as BleClient,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ZoneDataImpl implements _ZoneData {
  const _$ZoneDataImpl(
      {required this.id,
      required this.firstTimeSeen,
      required this.lastTimeSeen,
      required this.zone,
      required this.bleClient});

  factory _$ZoneDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneDataImplFromJson(json);

  @override
  final int id;
  @override
  final String firstTimeSeen;
  @override
  final String lastTimeSeen;
  @override
  final Zone zone;
  @override
  final BleClient bleClient;

  @override
  String toString() {
    return 'ZoneData(id: $id, firstTimeSeen: $firstTimeSeen, lastTimeSeen: $lastTimeSeen, zone: $zone, bleClient: $bleClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstTimeSeen, firstTimeSeen) ||
                other.firstTimeSeen == firstTimeSeen) &&
            (identical(other.lastTimeSeen, lastTimeSeen) ||
                other.lastTimeSeen == lastTimeSeen) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.bleClient, bleClient) ||
                other.bleClient == bleClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstTimeSeen, lastTimeSeen, zone, bleClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneDataImplCopyWith<_$ZoneDataImpl> get copyWith =>
      __$$ZoneDataImplCopyWithImpl<_$ZoneDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneDataImplToJson(
      this,
    );
  }
}

abstract class _ZoneData implements ZoneData {
  const factory _ZoneData(
      {required final int id,
      required final String firstTimeSeen,
      required final String lastTimeSeen,
      required final Zone zone,
      required final BleClient bleClient}) = _$ZoneDataImpl;

  factory _ZoneData.fromJson(Map<String, dynamic> json) =
      _$ZoneDataImpl.fromJson;

  @override
  int get id;
  @override
  String get firstTimeSeen;
  @override
  String get lastTimeSeen;
  @override
  Zone get zone;
  @override
  BleClient get bleClient;
  @override
  @JsonKey(ignore: true)
  _$$ZoneDataImplCopyWith<_$ZoneDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
