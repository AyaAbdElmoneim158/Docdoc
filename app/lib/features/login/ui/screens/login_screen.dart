import 'package:flutter/material.dart';

import '../../../../core/common/screens/screen_container.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenContainer(
      body: Column(
        children: [
          LoginHeader(),
          // Form
          //bottom Text
          LoginFooter(),
        ],
      ),
    );
  }
}
