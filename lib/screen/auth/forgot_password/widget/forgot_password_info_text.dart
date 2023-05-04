import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ForgotPasswordInfoText extends StatelessWidget {
  const ForgotPasswordInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Enter your email address\nbelow to reset your password',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColor.videoCallerTimerColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }
}
