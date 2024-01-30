// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateUserDtoImpl _$$AuthenticateUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateUserDtoImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      rememberMe: json['rememberMe'] as bool,
    );

Map<String, dynamic> _$$AuthenticateUserDtoImplToJson(
        _$AuthenticateUserDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };
