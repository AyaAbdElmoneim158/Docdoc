import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_sizes.dart';
import '../../../core/helpers/app_strings.dart';
import '../../../core/theme/styles.dart';
import 'get_started_button.dart';

class DescTextAndBtn extends StatelessWidget {
  const DescTextAndBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          // 1-> Onboarding_Desc_Text.Text - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          Text(
            AppStrings.onboardingDescText,
            style: TextStyles.font13GrayRegular,
            textAlign: TextAlign.center,
          ),
          AppSizes.verticalSpace(AppSizes.xl.h),
          // 2-> Get_Started_Button - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          const GetStartedButton(),
        ],
      ),
    );
  }
}
