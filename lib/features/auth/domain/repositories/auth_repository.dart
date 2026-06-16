//lib/features/auth/domain/repositories/auth_repository.dart
import '../../data/models/auth_response_model.dart';
import '../../data/models/user_model.dart';

/// Contract for authentication logic
abstract class AuthRepository {
  Future<AuthResponseModel> login(String email, String password);

  Future<UserModel> register(String email, String password);

  Future<UserModel> getMe();

  Future<void> logout();

  Future<AuthResponseModel> refresh(String refreshToken);
}