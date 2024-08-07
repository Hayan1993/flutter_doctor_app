import 'package:doctorapp/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onbording/onboarding_screen.dart';

class AppRouter {
  MaterialPageRoute generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
