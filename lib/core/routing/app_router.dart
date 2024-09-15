import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newflutterproject/core/DI/dependency_injection.dart';
import 'package:newflutterproject/core/routing/routes.dart';
import 'package:newflutterproject/features/home/home_screen.dart';
import 'package:newflutterproject/features/login/logic/login_cubit.dart';


import '../../features/login/login_screen.dart';
import '../../features/onboarding/onboardinscreen.dart';

class AppRouter {
   Route? generateRoute(RouteSettings settings) {
     //this arguments to be passed in any screen like this ( arguments as ClassName )
     final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnBoardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
            ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen());
      default:
        return null;
        // return MaterialPageRoute(
        //     builder: (_) => Scaffold(
        //           body: Center(
        //             child: Text("No roure defined for ${settings.name}"),
        //           ),
        //         ));
    }
  }
}
