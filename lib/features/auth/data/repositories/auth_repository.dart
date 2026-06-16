//lib/features/auth/data/repositories/auth_repository.dart
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/auth_response_model.dart';
import '../models/user_model.dart';

/// Concrete implementation of AuthRepository
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<AuthResponseModel> login(String email, String password) {
    return remote.login(email: email, password: password);
  }

  @override
  Future<UserModel> register(String email, String password) {
    return remote.register(email: email, password: password);
  }

  @override
  Future<UserModel> getMe() {
    return remote.getMe();
  }

  @override
  Future<void> logout() {
    return remote.logout();
  }

  @override
  Future<AuthResponseModel> refresh(String refreshToken) {
    return remote.refresh(refreshToken: refreshToken);
  }
}