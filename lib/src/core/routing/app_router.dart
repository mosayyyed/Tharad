import 'package:go_router/go_router.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/features/splash/presentation/screens/splash_screen.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutePaths.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
