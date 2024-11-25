import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_sizes.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/helpers/app_validator.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class LoginEmailAndPasswordFields extends StatefulWidget {
  const LoginEmailAndPasswordFields({super.key});

  @override
  State<LoginEmailAndPasswordFields> createState() => _LoginEmailAndPasswordFieldsState();
}

class _LoginEmailAndPasswordFieldsState extends State<LoginEmailAndPasswordFields> {
  bool isObscureText = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildEmailField(),
          AppSizes.verticalSpace(AppSizes.md.h),
          _buildPasswordField(),
          AppSizes.verticalSpace(AppSizes.lg.h),
        ],
      ),
    );
  }

  // Build_email_field - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  Widget _buildEmailField() {
    return AppTextFormField(
      hintText: AppStrings.email,
      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppValidator.isEmailValid(value)) {
          return AppStrings.enterEmail;
        }
        return null;
      },
    );
  }

  // Build_password_field - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  Widget _buildPasswordField() {
    return AppTextFormField(
      hintText: AppStrings.password,
      controller: passwordController,
      isObscureText: isObscureText,
      suffixIcon: GestureDetector(
        onTap: _togglePasswordVisibility,
        child: Icon(
          isObscureText ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.enterPassword;
        }
        return null;
      },
    );
  }

  /// Toggles the visibility of the password.
  void _togglePasswordVisibility() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
