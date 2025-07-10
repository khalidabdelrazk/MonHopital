import 'package:flutter/material.dart';
import 'package:mon_hopital/core/routing/routes.dart';
import 'package:mon_hopital/features/login/ui/login_sceren.dart';
import 'package:mon_hopital/features/on%20boarding/onboarding_screen.dart';

class AppRoutes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginSceen:
        return MaterialPageRoute(builder: (_) => const LoginSceren());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined For ${settings.name}"),
            ),
          ),
        );
    }
  }
}
