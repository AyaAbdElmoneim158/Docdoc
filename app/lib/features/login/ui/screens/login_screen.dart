import 'package:flutter/material.dart';

import '../../../../core/common/screens/screen_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenContainer(
      body: Column(
        children: [
          Center(child: Text("Login Screen")),
        ],
      ),
    );
  }
}
