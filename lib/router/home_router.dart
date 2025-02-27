import 'package:go_router/go_router.dart';
import '../features/home/presentation/pages/home_page.dart';

final GoRouter homeRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
  ],
);
