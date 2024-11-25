import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/screens/screen_container.dart';
import '../../../core/helpers/app_sizes.dart';
import 'widgets/login_footer.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      body: Column(
        children: [
          const LoginHeader(),
          AppSizes.verticalSpace(AppSizes.xl.h),
          const LoginForm(),
          AppSizes.verticalSpace(AppSizes.md.h),
          const LoginFooter(),
        ],
      ),
    );
  }
}
