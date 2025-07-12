import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';
import 'package:mon_hopital/core/theming/font_weight_helper.dart';

class AppStyle {
  static TextStyle appBarTitle = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
  );
  static TextStyle onboardingTitle = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
  );
  static TextStyle onboardingSubtitle = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlueColor,
  );
  static TextStyle onboardingBody = GoogleFonts.inter(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.gray,
  );
  static TextStyle lightSimiBold16 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.light,
  );

  static TextStyle primarybold24 = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryBlueColor,
  );

  static TextStyle grayRegular14 = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );

  static TextStyle darkBlueMedium14 = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.darkBLue,
  );
  static TextStyle primaryBlueRegular12 = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.primaryBlueColor,
  );
  static TextStyle lightGrayRegular12 = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightGray,
  );

  static TextStyle darkGrayRegular12 = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.darker,
  );
}
