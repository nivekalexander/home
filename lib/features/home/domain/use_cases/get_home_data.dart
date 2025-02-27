import '../entities/home_entity.dart';
import '../../data/repositories/home_repository.dart';

class GetHomeData {
  final HomeRepository repository;

  GetHomeData(this.repository);

  Future<HomeEntity> execute() async {
    String message = await repository.getHomeData();
    return HomeEntity(message);
  }
}
