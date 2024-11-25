import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_sizes.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'login_email_and_password_fields.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1-> Login_Email_And_Password_Fields - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        const LoginEmailAndPasswordFields(),
        AppSizes.verticalSpace(AppSizes.lg.h),
        // 2-> forgotPassword.text - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(AppStrings.forgotPassword, style: TextStyles.font13BlueRegular),
        ),
        AppSizes.verticalSpace(AppSizes.xl.h),
        // 3-> Login.Button - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        AppTextButton(
          buttonText: AppStrings.login,
          textStyle: TextStyles.font16WhiteSemiBold,
          onPressed: () {},
        ),
      ],
    );
  }
}
