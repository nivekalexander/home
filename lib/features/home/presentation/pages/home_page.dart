import 'package:flutter/material.dart';
import 'package:home/core/services/auth_service.dart';
import 'package:home/features/home/data/repositories/user_repository.dart';
import '../../domain/use_cases/get_user_use_case.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInfo = "Cargando...";

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    GetUserUseCase getUserUseCase =
        GetUserUseCase(UserRepository(AuthService()));
    String userData = await getUserUseCase.execute();
    setState(() {
      userInfo = userData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text(userInfo)),
    );
  }
}
