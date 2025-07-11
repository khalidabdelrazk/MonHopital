import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mon_hopital/core/theming/app_style.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 491.h,
      child: Stack(
        children: [
          // Background logo SVG
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svgs/docdoc_logo_with_opacity.svg',
              fit: BoxFit.cover,
            ),
          ),

          // Doctor image
          Positioned(
            top: 20.h,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/doctor_pp.png',
              width: 375.w,
              height: 491.h,
              fit: BoxFit.cover,
            ),
          ),

          // Bottom text + better gradient
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Color(0xCCFFFFFF), // ~80% opacity
                    Color(0xf1FFFFFF), // ~50%
                    Color(0x66FFFFFF), // ~25%
                    Color(0x00FFFFFF), // transparent
                  ],
                  stops: [0.0, 0.3, 0.55, 0.75, 1.0],
                ),
              ),
              child: Center(
                child: Text(
                  "Best Doctor\nAppointment App",
                  textAlign: TextAlign.center,
                  style: AppStyle.onboardingSubtitle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
