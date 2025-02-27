import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';
import '../../domain/use_cases/get_home_data.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeData getHomeData;

  HomeBloc(this.getHomeData) : super(HomeInitial());

  void fetchHome() async {
    emit(HomeLoading());
    final homeData = await getHomeData.execute();
    emit(HomeLoaded(message: homeData.message));
  }
}
