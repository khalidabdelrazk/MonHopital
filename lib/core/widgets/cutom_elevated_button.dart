import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget body;
  final Color? color;
  final Color? backgroundColor;
  final int? borderRadius;
  final void Function()? onPressed;
  final double width, height;

  CustomElevatedButton({
    super.key,
    required this.body,
    this.onPressed,
    this.color,
    this.backgroundColor,
    this.borderRadius,
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
          backgroundColor: backgroundColor ?? AppColors.primaryBlueColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: borderRadius?.toDouble() != null
                ? BorderSide(
                    width: borderRadius?.toDouble() ?? 0,
                    color: Theme.of(context).primaryColor,
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
