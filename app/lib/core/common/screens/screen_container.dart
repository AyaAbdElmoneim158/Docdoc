import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/app_sizes.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({
    super.key,
    this.body,
    this.appBar,
    this.isBoarding = false,
  });

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool isBoarding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
              right: !isBoarding ? AppSizes.md.w : 0,
              left: !isBoarding ? AppSizes.md.w : 0,
            ),
            child: body,
          ),
        ),
      ),
    );
  }
}
