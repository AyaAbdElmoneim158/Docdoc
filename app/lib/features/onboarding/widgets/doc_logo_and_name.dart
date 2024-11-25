import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/app_sizes.dart';
import '../../../core/helpers/app_strings.dart';
import '../../../core/theme/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 1-> Docdoc_Logo.Image  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        SvgPicture.asset(AppAssets.docdocLogo),
        AppSizes.horizontalSpace(AppSizes.sm.w),
        // 2-> DocDoc.Text  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        Text(AppStrings.docDoc, style: TextStyles.font24BlackBold),
      ],
    );
  }
}
