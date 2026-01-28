import 'package:go_router/go_router.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/features/auth/presentation/screens/login_screen.dart';
import 'package:tharad/src/features/auth/presentation/screens/otp_verification_screen.dart';
import 'package:tharad/src/features/auth/presentation/screens/register_screen.dart';
import 'package:tharad/src/features/splash/presentation/screens/splash_screen.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutePaths.registerScreen,
    routes: [
      GoRoute(
        path: AppRoutePaths.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutePaths.otpVerificationScreen,
        builder: (context, state) {
          return const OtpVerificationScreen();
        },
      ),
    ],
  );
}
