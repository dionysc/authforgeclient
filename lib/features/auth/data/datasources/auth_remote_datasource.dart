//lib/features/auth/data/datasources/auth_remote_datasource.dart
import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/auth_response_model.dart';
import '../models/user_model.dart';

/// Handles all authentication API calls
class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  /// Login user
  Future<AuthResponseModel> login({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      ApiConstants.login,
      data: {
        "email": email,
        "password": password,
      },
    );

    return AuthResponseModel.fromJson(response.data);
  }

  /// Register user
  Future<UserModel> register({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      ApiConstants.register,
      data: {
        "email": email,
        "password": password,
      },
    );

    return UserModel.fromJson(response.data);
  }

  /// Get current user
  Future<UserModel> getMe() async {
    final response = await dio.get(ApiConstants.me);
    return UserModel.fromJson(response.data);
  }

  /// Refresh token
  Future<AuthResponseModel> refresh({
    required String refreshToken,
  }) async {
    final response = await dio.post(
      ApiConstants.refresh,
      data: {
        "refresh_token": refreshToken,
      },
    );

    return AuthResponseModel.fromJson(response.data);
  }

  /// Logout
  Future<void> logout() async {
    await dio.post(ApiConstants.logout);
  }
}