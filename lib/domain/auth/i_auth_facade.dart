import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain/auth/auth_failure.dart';
import 'package:shopping_app/domain/user/user.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String passwordConfirm,
    required String name,
    required String role,
  });
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<Option<User>> getSignedInUser({
    required String accessToken,
  });
  Future<void> signOut();
}