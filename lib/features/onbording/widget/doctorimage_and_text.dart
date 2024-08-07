import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/doc_logo_pacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColor.white, AppColor.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/onboarding_doctor.png"),
        ),
        Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: Text(
              "Best Doctor\n Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.3),
            ))
      ],
    );
  }
}