import 'package:flutter/material.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/forgot-password.png',
      height: 350,
      width: double.infinity,
      fit: BoxFit.contain,
    );
  }
}
