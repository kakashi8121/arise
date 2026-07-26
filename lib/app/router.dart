import 'package:go_router/go_router.dart';

import '../app/shell/app_shell.dart';
import '../features/splash/presentation/splash_screen.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const AppShell(),
      ),
    ],
  );
}