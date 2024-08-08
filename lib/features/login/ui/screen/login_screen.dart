import 'package:doctorapp/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widget/dont_have_account.dart';
import '../widget/terms_and_cpndition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24BlueBold,
              ),
              spacingVirtecal(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14GrayRegular,
              ),
              spacingVirtecal(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(
                        controller: TextEditingController(),
                        validator: (v) {},
                        hintText: "Email"),
                    spacingVirtecal(18),
                    AppTextFormField(
                        controller: TextEditingController(),
                        validator: (v) {},
                        hintText: "PassWord"),
                    spacingVirtecal(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13blueRegular,
                      ),
                    ),
                    spacingVirtecal(40),
                    AppTextButton(
                      buttonText: "Login",
                      onpressed: () {},
                      textstyleButton: TextStyles.font16whitesemBold,
                    ),
                    spacingVirtecal(16),
                    const TermsAndConditionText(),
                    spacingVirtecal(60),
                    const DontHaveAccountText(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
