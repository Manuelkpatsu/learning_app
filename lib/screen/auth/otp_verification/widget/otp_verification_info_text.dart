import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class OTPVerificationInfoText extends StatelessWidget {
  const OTPVerificationInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'To reset your password, please\nenter the 4 digit pin sent to your email.',
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
