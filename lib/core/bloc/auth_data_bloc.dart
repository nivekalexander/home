import 'package:flutter_bloc/flutter_bloc.dart';

class AuthEvent {}

class AuthState {
  final bool isAuthenticated;
  final String? userToken;

  AuthState({this.isAuthenticated = false, this.userToken});
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState());

  void login(String token) {
    emit(AuthState(isAuthenticated: true, userToken: token));
  }

  void logout() {
    emit(AuthState(isAuthenticated: false, userToken: null));
  }
}
