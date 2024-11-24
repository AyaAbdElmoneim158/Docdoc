import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/routing/app_routes.dart';
import '/core/routing/app_routing.dart';
import '/core/theme/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.primary100,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.onBoardingScreen,
        onGenerateRoute: AppRouting.generateRoute,
      ),
    );
  }
}
