import 'package:doctorapp/core/helper/extensions.dart';
import 'package:doctorapp/core/theming/colors.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';

class GetStardButton extends StatelessWidget {
  const GetStardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          backgroundColor: MaterialStateProperty.all(AppColor.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52))),
      child: Text(
        "Get Starte",
        style: TextStyles.font16whitemedium,
      ),
    );
  }
}
