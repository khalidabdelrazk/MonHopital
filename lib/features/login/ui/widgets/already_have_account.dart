import 'package:flutter/material.dart';
import 'package:mon_hopital/core/theming/app_style.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: AppStyle.darkGrayRegular12,
          ),
          TextSpan(text: "Sign Up", style: AppStyle.primaryBlueRegular12),
        ],
      ),
    );
  }
}
