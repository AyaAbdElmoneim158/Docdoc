import 'package:app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/app_strings.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: AppStrings.geStarted,
      textStyle: TextStyles.font16WhiteSemiBold,
      onPressed: () {
        context.pushNamed(AppRoutes.loginScreen);
      },
    );
  }
}
