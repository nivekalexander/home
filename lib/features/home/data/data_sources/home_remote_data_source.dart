import '../repositories/home_repository.dart';

class HomeRemoteDataSource {
  final HomeRepository repository;

  HomeRemoteDataSource(this.repository);

  Future<String> fetchHomeData() async {
    return repository.getHomeData();
  }
}
