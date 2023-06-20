import 'package:chat_app_clean_architecture/features/user/domain/repository/user_repository.dart';

class GoogleAuthUseCase {
  final UserRepository repository;

  GoogleAuthUseCase({required this.repository});

  Future<void> call() async {
    return repository.googleAuth();
  }
}
