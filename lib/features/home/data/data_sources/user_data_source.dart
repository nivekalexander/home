import '../repositories/user_repository.dart';

class UserDataSource {
  final UserRepository repository;

  UserDataSource(this.repository);

  Future<String> fetchUserData() async {
    return repository.getUserData();
  }
}
