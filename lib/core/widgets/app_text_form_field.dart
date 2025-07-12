import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';
import 'package:mon_hopital/core/theming/app_style.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? bgColor;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextStyle? style;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.keyboardType,
    this.focusedBorder,
    this.enabledBorder,
    this.bgColor,
    this.controller,
    this.obscureText,
    this.style,
    this.prefixIcon,
    this.suffixIcon, this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 17.w),
        hintText: hintText,
        hintStyle:
            hintStyle ??
            AppStyle.grayRegular14.copyWith(color: Colors.grey.shade600),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: AppColors.primaryBlueColor,
                width: 1.3,
              ),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: AppColors.lighter, width: 1.3),
            ),
        filled: true,
        fillColor: AppColors.moreLighter,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      controller: controller,
      obscureText: obscureText ?? false,
      style: style ?? AppStyle.darkBlueMedium14,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction:
          TextInputAction.done, // Specify the action for the keyboard button
    );
  }
}
