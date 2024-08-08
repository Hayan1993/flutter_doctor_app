import 'package:doctorapp/core/theming/colors.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentpadding;
  final InputBorder? foucseBorder;
  final InputBorder? enableBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusederrorBorder;
  final TextEditingController controller;
  final Function(String?) validator;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField(
      {super.key,
      this.contentpadding,
      this.foucseBorder,
      this.enableBorder,
      this.errorBorder,
      this.focusederrorBorder,
      required this.controller,
      required this.validator,
      this.inputTextStyle,
      this.hintTextStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColor.morelightergray,
        filled: true,
        isDense: true,
        contentPadding: contentpadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: foucseBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.lightergray, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                )),
        focusedErrorBorder: focusederrorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                )),
        hintStyle: hintTextStyle ?? TextStyles.font14lightgrayregular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
