// ignore_for_file: unused_local_variable
import 'package:app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouting {
  AppRouting._();

  static Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("LoginScreen")),
          ),
        );

      default:
        return null;
    }
  }
}
