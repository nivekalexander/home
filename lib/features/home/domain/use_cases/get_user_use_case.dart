import '../../data/repositories/user_repository.dart';

class GetUserUseCase {
  final UserRepository repository;

  GetUserUseCase(this.repository);

  Future<String> execute() async {
    return repository.getUserData();
  }
}
