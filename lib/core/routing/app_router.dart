import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/core/routing/routes.dart';
import 'package:newflutterproject/features/ui/onboarding/onboardinscreen.dart';
import 'package:newflutterproject/features/ui/onlogin/login.dart';

class AppRouter {
 static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No roure defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
