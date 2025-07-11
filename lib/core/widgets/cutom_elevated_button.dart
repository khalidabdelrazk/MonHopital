import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget body;
  final Color? color; // <-- Foreground (text/icon) color
  final Color? backgroundColor;
  final int? borderWidth;
  final Color? borderColor;
  final void Function()? onPressed;
  final double width, height;
  final double borderRadius;

  CustomElevatedButton({
    super.key,
    required this.body,
    this.onPressed,
    this.color,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius = 16.0,
    this.width = double.infinity,
    double? height,
  }) : height = height ?? 52.h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.transparent, // ← text/icon color
          backgroundColor: backgroundColor ?? AppColors.primaryBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderColor != null
                ? BorderSide(
                    color: borderColor!,
                    width: borderWidth?.toDouble() ?? 1,
                  )
                : BorderSide.none,
          ),
        ),
        onPressed: onPressed,
        child: body,
      ),
    );
  }
}
