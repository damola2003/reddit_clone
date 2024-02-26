import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/auth/authrepository.dart';

final AuthControllerProvider = Provider(
    (ref) => AuthController(authRepository: ref.read(AuthRepositoryProvider)));

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;
  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
