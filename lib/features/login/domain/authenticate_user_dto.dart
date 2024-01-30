// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'authenticate_user_dto.freezed.dart';
part 'authenticate_user_dto.g.dart';

@Freezed()
class AuthenticateUserDto with _$AuthenticateUserDto {
  @JsonSerializable(explicitToJson: true)
  const factory AuthenticateUserDto({
    required String username,
    required String password,
    required bool rememberMe,
  }) = _AuthenticateUserDto;

  factory AuthenticateUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateUserDtoFromJson(json);
}
