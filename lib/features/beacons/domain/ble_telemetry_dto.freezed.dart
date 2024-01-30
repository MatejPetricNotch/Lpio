// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_telemetry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BleTelemetryDto _$BleTelemetryDtoFromJson(Map<String, dynamic> json) {
  return _BleTelemetryDto.fromJson(json);
}

/// @nodoc
mixin _$BleTelemetryDto {
  String get ts => throw _privateConstructorUsedError;
  List<BleTelemetryData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleTelemetryDtoCopyWith<BleTelemetryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleTelemetryDtoCopyWith<$Res> {
  factory $BleTelemetryDtoCopyWith(
          BleTelemetryDto value, $Res Function(BleTelemetryDto) then) =
      _$BleTelemetryDtoCopyWithImpl<$Res, BleTelemetryDto>;
  @useResult
  $Res call({String ts, List<BleTelemetryData> data});
}

/// @nodoc
class _$BleTelemetryDtoCopyWithImpl<$Res, $Val extends BleTelemetryDto>
    implements $BleTelemetryDtoCopyWith<$Res> {
  _$BleTelemetryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ts = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      ts: null == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BleTelemetryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleTelemetryDtoImplCopyWith<$Res>
    implements $BleTelemetryDtoCopyWith<$Res> {
  factory _$$BleTelemetryDtoImplCopyWith(_$BleTelemetryDtoImpl value,
          $Res Function(_$BleTelemetryDtoImpl) then) =
      __$$BleTelemetryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ts, List<BleTelemetryData> data});
}

/// @nodoc
class __$$BleTelemetryDtoImplCopyWithImpl<$Res>
    extends _$BleTelemetryDtoCopyWithImpl<$Res, _$BleTelemetryDtoImpl>
    implements _$$BleTelemetryDtoImplCopyWith<$Res> {
  __$$BleTelemetryDtoImplCopyWithImpl(
      _$BleTelemetryDtoImpl _value, $Res Function(_$BleTelemetryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ts = null,
    Object? data = null,
  }) {
    return _then(_$BleTelemetryDtoImpl(
      ts: null == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BleTelemetryData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BleTelemetryDtoImpl implements _BleTelemetryDto {
  const _$BleTelemetryDtoImpl(
      {required this.ts, required final List<BleTelemetryData> data})
      : _data = data;

  factory _$BleTelemetryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BleTelemetryDtoImplFromJson(json);

  @override
  final String ts;
  final List<BleTelemetryData> _data;
  @override
  List<BleTelemetryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BleTelemetryDto(ts: $ts, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleTelemetryDtoImpl &&
            (identical(other.ts, ts) || other.ts == ts) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ts, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleTelemetryDtoImplCopyWith<_$BleTelemetryDtoImpl> get copyWith =>
      __$$BleTelemetryDtoImplCopyWithImpl<_$BleTelemetryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BleTelemetryDtoImplToJson(
      this,
    );
  }
}

abstract class _BleTelemetryDto implements BleTelemetryDto {
  const factory _BleTelemetryDto(
      {required final String ts,
      required final List<BleTelemetryData> data}) = _$BleTelemetryDtoImpl;

  factory _BleTelemetryDto.fromJson(Map<String, dynamic> json) =
      _$BleTelemetryDtoImpl.fromJson;

  @override
  String get ts;
  @override
  List<BleTelemetryData> get data;
  @override
  @JsonKey(ignore: true)
  _$$BleTelemetryDtoImplCopyWith<_$BleTelemetryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
