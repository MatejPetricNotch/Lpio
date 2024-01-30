// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@Freezed()
class Account with _$Account {
  @JsonSerializable(explicitToJson: true)
  const factory Account({
    required int id,
    String? login,
    String? firstName,
    String? lastName,
    String? email,
    String? imageUrl,
    required bool activated,
    String? langKey,
    String? createdBy,
    String? createdDate,
    String? lastModifiedBy,
    String? lastModifiedDate,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
