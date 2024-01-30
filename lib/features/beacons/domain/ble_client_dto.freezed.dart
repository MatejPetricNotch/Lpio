// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_client_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BleClientDto _$BleClientDtoFromJson(Map<String, dynamic> json) {
  return _BleClientDto.fromJson(json);
}

/// @nodoc
mixin _$BleClientDto {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  BleUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleClientDtoCopyWith<BleClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleClientDtoCopyWith<$Res> {
  factory $BleClientDtoCopyWith(
          BleClientDto value, $Res Function(BleClientDto) then) =
      _$BleClientDtoCopyWithImpl<$Res, BleClientDto>;
  @useResult
  $Res call({String name, String? description, BleUser user});

  $BleUserCopyWith<$Res> get user;
}

/// @nodoc
class _$BleClientDtoCopyWithImpl<$Res, $Val extends BleClientDto>
    implements $BleClientDtoCopyWith<$Res> {
  _$BleClientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BleUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BleUserCopyWith<$Res> get user {
    return $BleUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BleClientDtoImplCopyWith<$Res>
    implements $BleClientDtoCopyWith<$Res> {
  factory _$$BleClientDtoImplCopyWith(
          _$BleClientDtoImpl value, $Res Function(_$BleClientDtoImpl) then) =
      __$$BleClientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, BleUser user});

  @override
  $BleUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$BleClientDtoImplCopyWithImpl<$Res>
    extends _$BleClientDtoCopyWithImpl<$Res, _$BleClientDtoImpl>
    implements _$$BleClientDtoImplCopyWith<$Res> {
  __$$BleClientDtoImplCopyWithImpl(
      _$BleClientDtoImpl _value, $Res Function(_$BleClientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? user = null,
  }) {
    return _then(_$BleClientDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BleUser,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BleClientDtoImpl implements _BleClientDto {
  const _$BleClientDtoImpl(
      {required this.name, this.description, required this.user});

  factory _$BleClientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BleClientDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final BleUser user;

  @override
  String toString() {
    return 'BleClientDto(name: $name, description: $description, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleClientDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleClientDtoImplCopyWith<_$BleClientDtoImpl> get copyWith =>
      __$$BleClientDtoImplCopyWithImpl<_$BleClientDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BleClientDtoImplToJson(
      this,
    );
  }
}

abstract class _BleClientDto implements BleClientDto {
  const factory _BleClientDto(
      {required final String name,
      final String? description,
      required final BleUser user}) = _$BleClientDtoImpl;

  factory _BleClientDto.fromJson(Map<String, dynamic> json) =
      _$BleClientDtoImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  BleUser get user;
  @override
  @JsonKey(ignore: true)
  _$$BleClientDtoImplCopyWith<_$BleClientDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
