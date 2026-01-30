import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tharad/src/core/di/injection_container.dart';
import 'package:tharad/src/core/routing/app_router_paths.dart';
import 'package:tharad/src/core/services/secure_storage_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthAndNavigate();
  }

  Future<void> _checkAuthAndNavigate() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    final hasToken = await sl<SecureStorageService>().hasToken();

    if (!mounted) return;

    context.go(
      hasToken ? AppRoutePaths.layoutScreen : AppRoutePaths.loginScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/app/app_logo.png', width: 150)),
    );
  }
}
