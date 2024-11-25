// ignore_for_file: unused_local_variable
import '/features/login/ui/screens/login_screen.dart';
import '/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouting {
  AppRouting._();

  static Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // OnBoarding.Screen - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      // Login.Screen - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      // SignUp.Screen - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      case AppRoutes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("signUp Screen")),
          ),
        );

      default:
        return null;
    }
  }
}
