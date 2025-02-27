import 'package:home/core/services/auth_service.dart';

class UserRepository {
  final AuthService _authService;

  UserRepository(this._authService);

  Future<String> getUserData() async {
    String? token = await _authService.getToken();
    if (token != null) {
      return "Usuario autenticado con token: $token";
    } else {
      return "No hay usuario autenticado.";
    }
  }
}
