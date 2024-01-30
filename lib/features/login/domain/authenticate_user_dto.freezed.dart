// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateUserDto _$AuthenticateUserDtoFromJson(Map<String, dynamic> json) {
  return _AuthenticateUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateUserDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateUserDtoCopyWith<AuthenticateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateUserDtoCopyWith<$Res> {
  factory $AuthenticateUserDtoCopyWith(
          AuthenticateUserDto value, $Res Function(AuthenticateUserDto) then) =
      _$AuthenticateUserDtoCopyWithImpl<$Res, AuthenticateUserDto>;
  @useResult
  $Res call({String username, String password, bool rememberMe});
}

/// @nodoc
class _$AuthenticateUserDtoCopyWithImpl<$Res, $Val extends AuthenticateUserDto>
    implements $AuthenticateUserDtoCopyWith<$Res> {
  _$AuthenticateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? rememberMe = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticateUserDtoImplCopyWith<$Res>
    implements $AuthenticateUserDtoCopyWith<$Res> {
  factory _$$AuthenticateUserDtoImplCopyWith(_$AuthenticateUserDtoImpl value,
          $Res Function(_$AuthenticateUserDtoImpl) then) =
      __$$AuthenticateUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, bool rememberMe});
}

/// @nodoc
class __$$AuthenticateUserDtoImplCopyWithImpl<$Res>
    extends _$AuthenticateUserDtoCopyWithImpl<$Res, _$AuthenticateUserDtoImpl>
    implements _$$AuthenticateUserDtoImplCopyWith<$Res> {
  __$$AuthenticateUserDtoImplCopyWithImpl(_$AuthenticateUserDtoImpl _value,
      $Res Function(_$AuthenticateUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? rememberMe = null,
  }) {
    return _then(_$AuthenticateUserDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AuthenticateUserDtoImpl implements _AuthenticateUserDto {
  const _$AuthenticateUserDtoImpl(
      {required this.username,
      required this.password,
      required this.rememberMe});

  factory _$AuthenticateUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateUserDtoImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'AuthenticateUserDto(username: $username, password: $password, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateUserDtoImplCopyWith<_$AuthenticateUserDtoImpl> get copyWith =>
      __$$AuthenticateUserDtoImplCopyWithImpl<_$AuthenticateUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateUserDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateUserDto implements AuthenticateUserDto {
  const factory _AuthenticateUserDto(
      {required final String username,
      required final String password,
      required final bool rememberMe}) = _$AuthenticateUserDtoImpl;

  factory _AuthenticateUserDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticateUserDtoImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateUserDtoImplCopyWith<_$AuthenticateUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
