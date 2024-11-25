import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/app_sizes.dart';
import '../../../core/helpers/app_strings.dart';
import '../../../core/theme/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    Decoration? opacityWhiteForegroundDecoration = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.white.withOpacity(0.0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: const [0.14, 0.4],
      ),
    );

    return Stack(
      children: [
        // 1-> Docdoc_Logo_Low_Opacity.image - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        SvgPicture.asset(AppAssets.docdocLogoLowOpacity),
        // 2-> Onboarding_Doctor.image  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Container(
          foregroundDecoration: opacityWhiteForegroundDecoration,
          child: Image.asset(AppAssets.onboardingDoctor),
        ),
        // 3-> Best_Doctor_Appointment_App.Text  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            AppStrings.bestDoctorAppointmentApp,
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: AppSizes.textHeight),
          ),
        ),
      ],
    );
  }
}
