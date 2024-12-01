import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/common/screens/screen_container.dart';
import '../../core/helpers/app_sizes.dart';
import 'widgets/desc_text_and_btn.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      isBoarding: true,
      body: Column(
        children: [
          const DocLogoAndName(),
          AppSizes.verticalSpace(AppSizes.xl.h),
          const DoctorImageAndText(),
          const DescTextAndBtn(),
        ],
      ),
    );
  }
}
