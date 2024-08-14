import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/user/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    required String id,
    @JsonKey(name: 'token') required String? accessToken,
    required String? role,
    required String? name,
    required String? email,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      name: user.name,
      email: user.emailAddress,
      role: user.role,
      accessToken: user.accessToken,
    );
  }

  User toDomain() {
    return User(
      id: id,
      emailAddress: email,
      name: name,
      role: role,
      accessToken: accessToken,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
