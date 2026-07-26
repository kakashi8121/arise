import 'package:go_router/go_router.dart';

import '../features/splash/presentation/splash_screen.dart';
import 'shell/app_shell.dart';

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