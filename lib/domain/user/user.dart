import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? emailAddress,
    String? role,
    String? accessToken,
  }) = _User;

  factory User.empty() => const User(
        name: '',
        emailAddress: '',
        role: '',
        id: '',
        accessToken: '',
      );
}
