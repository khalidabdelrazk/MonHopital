import 'package:flutter/material.dart';
import 'package:mon_hopital/core/routing/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mon_hopital/core/routing/routes.dart';
import 'package:mon_hopital/core/theming/app_colors.dart';

class DocApp extends StatelessWidget {
  final AppRoutes appRoutes;

  const DocApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: AppColors.primaryBlueColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.onBoarding,
          onGenerateRoute: appRoutes.generateRoute,
        );
      },
    );
  }
}
