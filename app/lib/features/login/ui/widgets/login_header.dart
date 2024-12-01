import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_sizes.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1-> Login_title - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Text(AppStrings.loginTitle, style: TextStyles.font24BlueBold),
        AppSizes.verticalSpace(AppSizes.sm.h),
        // 2-> Login_subtitle - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Text(AppStrings.loginSubTitle, style: TextStyles.font14GrayRegular),
        AppSizes.verticalSpace(AppSizes.xl.h),
      ],
    );
  }
}
