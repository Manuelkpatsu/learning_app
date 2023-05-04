import 'package:flutter/material.dart';

class PasswordSuccessImage extends StatelessWidget {
  const PasswordSuccessImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/reset-success.png',
      height: 300,
      width: double.infinity,
      fit: BoxFit.contain,
    );
  }
}
