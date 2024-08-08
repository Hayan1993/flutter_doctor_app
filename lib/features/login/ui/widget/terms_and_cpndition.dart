import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "By logging, you agree to our",
              style: TextStyles.font13grayregular),
          TextSpan(
              text: "Terms & Conditions",
              style: TextStyles.font13DarkBlueRegular),
          TextSpan(
              text: "And",
              style: TextStyles.font13grayregular.copyWith(height: 1.5)),
          TextSpan(
              text: "PrivacyPolicy.", style: TextStyles.font13DarkBlueRegular),
        ]));
  }
}
