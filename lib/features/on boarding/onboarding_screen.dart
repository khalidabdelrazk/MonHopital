import 'package:flutter/material.dart';
import 'package:mon_hopital/features/on%20boarding/widgets/doc_logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: Column(
        children: [
          DocLogoAndName()
        ],
      ),)),
    );
  }
}