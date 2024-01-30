// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.freezed.dart';
part 'login_response.g.dart';

@Freezed()
class LoginResponse with _$LoginResponse {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponse({
    @JsonKey(name: "id_token") required String idToken,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
