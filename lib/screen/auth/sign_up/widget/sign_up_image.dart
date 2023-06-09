import 'package:flutter/material.dart';

class SignUpImage extends StatelessWidget {
  const SignUpImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/signup.png',
      height: 280,
      width: double.infinity,
      fit: BoxFit.contain,
    );
  }
}
