// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BleUser _$BleUserFromJson(Map<String, dynamic> json) {
  return _BleUser.fromJson(json);
}

/// @nodoc
mixin _$BleUser {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleUserCopyWith<BleUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleUserCopyWith<$Res> {
  factory $BleUserCopyWith(BleUser value, $Res Function(BleUser) then) =
      _$BleUserCopyWithImpl<$Res, BleUser>;
  @useResult
  $Res call({int id, String login});
}

/// @nodoc
class _$BleUserCopyWithImpl<$Res, $Val extends BleUser>
    implements $BleUserCopyWith<$Res> {
  _$BleUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleUserImplCopyWith<$Res> implements $BleUserCopyWith<$Res> {
  factory _$$BleUserImplCopyWith(
          _$BleUserImpl value, $Res Function(_$BleUserImpl) then) =
      __$$BleUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String login});
}

/// @nodoc
class __$$BleUserImplCopyWithImpl<$Res>
    extends _$BleUserCopyWithImpl<$Res, _$BleUserImpl>
    implements _$$BleUserImplCopyWith<$Res> {
  __$$BleUserImplCopyWithImpl(
      _$BleUserImpl _value, $Res Function(_$BleUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_$BleUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BleUserImpl implements _BleUser {
  const _$BleUserImpl({required this.id, required this.login});

  factory _$BleUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$BleUserImplFromJson(json);

  @override
  final int id;
  @override
  final String login;

  @override
  String toString() {
    return 'BleUser(id: $id, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleUserImplCopyWith<_$BleUserImpl> get copyWith =>
      __$$BleUserImplCopyWithImpl<_$BleUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BleUserImplToJson(
      this,
    );
  }
}

abstract class _BleUser implements BleUser {
  const factory _BleUser({required final int id, required final String login}) =
      _$BleUserImpl;

  factory _BleUser.fromJson(Map<String, dynamic> json) = _$BleUserImpl.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$BleUserImplCopyWith<_$BleUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
