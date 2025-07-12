import 'package:flutter/material.dart';
import 'package:mon_hopital/core/theming/app_style.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: AppStyle.lightGrayRegular12,
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: AppStyle.darkGrayRegular12,
          ),
          TextSpan(text: " and ", style: AppStyle.lightGrayRegular12),
          TextSpan(text: "Privacy Policy", style: AppStyle.darkGrayRegular12),
        ],
      ),
    );
  }
}
