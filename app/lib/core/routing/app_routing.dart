// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouting {
  AppRouting._();

 static Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.initScreen:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Docdoc app")),
          ),
        );

      default:
        return null;
    }
  }
}
