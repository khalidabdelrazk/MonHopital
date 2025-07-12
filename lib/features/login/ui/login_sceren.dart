import 'package:flutter/material.dart';
import 'package:mon_hopital/core/helpers/spacing.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';
import 'package:mon_hopital/core/theming/app_style.dart';
import 'package:mon_hopital/core/widgets/app_text_button.dart';
import 'package:mon_hopital/core/widgets/app_text_form_field.dart';
import 'package:mon_hopital/core/widgets/cutom_elevated_button.dart';
import 'package:mon_hopital/features/login/ui/widgets/already_have_account.dart';
import 'package:mon_hopital/features/login/ui/widgets/terms_and_condition_text.dart';

class LoginSceren extends StatefulWidget {
  const LoginSceren({super.key});

  @override
  State<LoginSceren> createState() => _LoginScerenState();
}

class _LoginScerenState extends State<LoginSceren> {
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpacing(80),
                Text('Welcome Back', style: AppStyle.primarybold24),
                verticalSpacing(12),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppStyle.grayRegular14,
                ),
                verticalSpacing(20),
                AppTextFormField(hintText: "Email"),
                verticalSpacing(16),
                AppTextFormField(
                  hintText: "Password",
                  obscureText: _isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      !_isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                verticalSpacing(14),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: AppTextButton(
                    text: 'Forgot Password?',
                    onPressed: () {},
                  ),
                ),
                verticalSpacing(24),
                CustomElevatedButton(
                onPressed: () {
                  // Navigate to the next screen or perform an action
                },
                backgroundColor: AppColors.primaryBlueColor,
                body: Text("Get Started", style: AppStyle.lightSimiBold16),
              ),
              verticalSpacing(24),
              TermsAndConditionText(),
              verticalSpacing(18),
              Align(alignment: Alignment.center, child: AlreadyHaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
