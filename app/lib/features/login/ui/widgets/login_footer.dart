import 'package:app/core/helpers/extensions.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_sizes.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/styles.dart';
import 'package:flutter/gestures.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1-> Terms_And_Conditions.Text - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        const TermsAndConditionsText(),
        // verticalSpace(60),
        AppSizes.verticalSpace(AppSizes.xl * 2.h),
        // 2-> Dont_Have_Account.Text - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        const DontHaveAccountText(),
      ],
    );
  }
}

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: AppStrings.loginSpan1, style: TextStyles.font13GrayRegular),
          TextSpan(text: AppStrings.loginSpan2, style: TextStyles.font13DarkBlueMedium),
          TextSpan(
            text: AppStrings.loginSpan3,
            style: TextStyles.font13GrayRegular.copyWith(height: AppSizes.textHeight),
          ),
          TextSpan(text: AppStrings.loginSpan4, style: TextStyles.font13DarkBlueMedium),
        ],
      ),
    );
  }
}

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: AppStrings.dontHaveAnAccount, style: TextStyles.font13DarkBlueRegular),
          TextSpan(
            text: AppStrings.signUp,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(AppRoutes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
