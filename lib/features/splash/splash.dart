import 'package:doctor_app/core/helpers/extentions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_assets.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      context.pushReplacementNamed(Routes.onBoardingScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.splashScreen,fit: BoxFit.fill,);
  }
}
