import 'package:flutter/material.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String child;
  final Color? backgroundColor;  
  final VoidCallback? onPressed;
  final double? width, height;

  const CustomElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.width,
    this.height, this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          backgroundColor: backgroundColor ?? AppColors.primaryBlueColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(child),
      ),
    );
  }
}
