import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'core/bloc/auth_data_bloc.dart';
import 'router/home_router.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(), // ✅ Se -instancia sin argumentos
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: homeRouter,
      ),
    );
  }
}
