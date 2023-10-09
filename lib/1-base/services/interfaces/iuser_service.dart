import 'dart:async';

abstract class IUserService {
  FutureOr<dynamic> login(String email, String password);
  Future<void> changePassword();
}
