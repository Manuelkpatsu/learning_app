import 'package:flutter/material.dart';

class OTPVerificationImage extends StatelessWidget {
  const OTPVerificationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/otp.png',
      height: 350,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
