import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/styles.dart';

// Define border styles as reusable variables

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ?? defaultFocusedBorder,
        enabledBorder: enabledBorder ?? defaultEnabledBorder,
        errorBorder: defaultErrorBorder,
        focusedErrorBorder: defaultErrorBorder,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.gray20,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }

  final InputBorder defaultFocusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: ColorsManager.primary100,
      width: 1.3,
    ),
    borderRadius: BorderRadius.circular(16.0),
  );

  final InputBorder defaultEnabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: ColorsManager.gray30,
      width: 1.3,
    ),
    borderRadius: BorderRadius.circular(16.0),
  );

  final InputBorder defaultErrorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.red,
      width: 1.3,
    ),
    borderRadius: BorderRadius.circular(16.0),
  );
}
