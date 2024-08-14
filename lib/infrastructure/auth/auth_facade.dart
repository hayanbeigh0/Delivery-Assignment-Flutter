import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:shopping_app/domain/auth/auth_failure.dart';
import 'package:shopping_app/domain/auth/i_auth_facade.dart';
import 'package:shopping_app/domain/user/user.dart';
import 'package:shopping_app/infrastructure/user/user_dtos.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade extends IAuthFacade {
  // final FirebaseAuth _firebaseAuth;
  final Dio dio = GetIt.instance<Dio>();
  // AuthFacade(this._firebaseAuth);
  @override
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String passwordConfirm,
    required String name,
    required String role,
  }) async {
    final String emailAddressStr = emailAddress;
    final String passwordStr = password;
    try {
      final Response response = await dio.post(
        '/auth/signup',
        data: {
          "name": name,
          "email": emailAddressStr,
          "password": passwordStr,
          "passwordConfirm": passwordConfirm,
          "role": role,
        },
      );
      return right(UserDto.fromJson(response.data['data']['user']).toDomain());
    } on DioException catch (e) {
      log('Error while signing up: $e');
      int? responseCode;
      if (e.response != null) {
        responseCode = e.response!.data["error"]["code"];
        if (responseCode == 11000) {
          log('Email already in use');
          return left(const AuthFailure.emailAlreadyInUse());
        }
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    final String emailAddressStr = emailAddress;
    final String passwordStr = password;
    try {
      final Response response = await dio.post(
        '/auth/login',
        data: {
          "email": emailAddressStr,
          "password": passwordStr,
        },
      );
      log(response.data.toString());
      final Map<String, dynamic> responseData = response.data;
      final String accessToken = responseData['token'];
      final Map<String, dynamic> userData = responseData['data']['user'];

      UserDto userDto = UserDto.fromJson(userData);
      userDto = userDto.copyWith(accessToken: accessToken);
      return right(userDto.toDomain());
    } on DioException catch (e) {
      log('Error while signing in: $e');
      if (e.response != null) {
        int? responseCode = e.response!.data["error"]["statusCode"];
        if (responseCode == 401) {
          log('invalidEmailAndPasswordCombination');
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        }
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser({
    required String accessToken,
  }) async {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }
}
