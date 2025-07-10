import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';

class AppStyle {
  static TextStyle appBarTitle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
  );
  static TextStyle onboardingTitle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
  );
  static TextStyle onboardingSubtitle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlueColor,
  );
  static TextStyle onboardingBody = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.gray,
  );
  static TextStyle lightSimiBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.light,
  );
}
