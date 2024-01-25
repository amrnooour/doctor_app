import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/app_assets.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.docdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14,0.4]
            )
          ),
          child: Image.asset(AppAssets.doctor),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(child: Text("     Best Doctor\nAppointment App",style: TextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),)))
      ],
    );
  }
}
