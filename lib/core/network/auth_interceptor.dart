//lib/core/network/auth_interceptor.dart
import 'package:dio/dio.dart';
import '../storage/secure_storage_service.dart';

/// Interceptor to attach authentication token to requests
class AuthInterceptor extends Interceptor {
  final SecureStorageService storage;

  AuthInterceptor(this.storage);

  @override
  Future<void> onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final token = await storage.getAccessToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}