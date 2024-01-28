import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/splash/splash.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    final arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const Splash());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text("No Route defined for ${settings.name}"),),
        ));
    }
  }
}