import 'package:doctorapp/core/routing/app_router.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColor.mainBlue,
            scaffoldBackgroundColor: AppColor.white),
        title: "Doc App",
        initialRoute: Routes.onBordingScreen,
        onGenerateRoute: appRouter.generateRouter,
      ),
    );
  }
}
