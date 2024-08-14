import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:shopping_app/domain/user/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: uid,
      name: displayName,
      emailAddress: email,
      role: photoURL,
    );
  }
}
