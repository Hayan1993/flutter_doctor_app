import 'package:doctorapp/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRedius;
  final Color? backgoundColor;
  final double? horizntalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textstyleButton;

  final VoidCallback onpressed;

  const AppTextButton(
      {super.key,
      this.borderRedius,
      this.backgoundColor,
      this.horizntalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      required this.textstyleButton,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRedius ?? 16))),
        backgroundColor:
            MaterialStateProperty.all(backgoundColor ?? AppColor.mainBlue),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
            horizontal: horizntalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h)),
        fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 52.h)),
      ),
      child: Text(
        buttonText,
        style: textstyleButton,
      ),
    );
  }
}
