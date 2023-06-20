import 'package:chat_app_clean_architecture/features/user/domain/repository/user_repository.dart';

class IsSignInUseCase {
  final UserRepository repository;

  IsSignInUseCase({required this.repository});

  Future<bool> call() async {
    return repository.isSignIn();
  }
}
