import 'package:freezed_annotation/freezed_annotation.dart';

part 'zentao_user.freezed.dart';
part 'zentao_user.g.dart';

/// Value object representing a Zentao user account with Discord mapping.
@freezed
class ZentaoUser with _$ZentaoUser {
  const factory ZentaoUser({
    required String account,
    required String password,
    int? module,
  }) = _ZentaoUser;

  factory ZentaoUser.fromJson(Map<String, dynamic> json) =>
      _$ZentaoUserFromJson(json);
}
