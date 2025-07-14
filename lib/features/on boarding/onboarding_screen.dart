import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/helpers/extension.dart';
import 'package:mon_hopital/core/routing/routes.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';
import 'package:mon_hopital/core/theming/app_style.dart';
import 'package:mon_hopital/core/widgets/cutom_elevated_button.dart';
import 'package:mon_hopital/features/on%20boarding/widgets/doc_logo_and_name.dart';
import 'package:mon_hopital/features/on%20boarding/widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.h), // Add some spacing at the top
              const DocLogoAndName(),
              SizedBox(
                height: 35.h,
              ), // Add some spacing between the logo and the body
              const OnboardingBody(),
              SizedBox(height: 30.h),
              Text(
                "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                textAlign: TextAlign.center,
                style: AppStyle.onboardingBody,
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevatedButton(
                  onPressed: () {
                    // Navigate to the next screen or perform an action
                    Navigaton(context).pushNamedAndRemoveUntil(
                      Routes.loginSceen,
                      arguments: null,
                      predicate: (route) => false,
                    ); // Remove all previous routes;
                  },
                  backgroundColor: AppColors.primaryBlueColor,
                  body: Text("Get Started", style: AppStyle.lightSimiBold16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
