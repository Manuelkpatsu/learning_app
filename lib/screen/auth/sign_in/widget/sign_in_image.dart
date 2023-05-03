import 'package:flutter/material.dart';

class SignInImage extends StatelessWidget {
  const SignInImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/signin.png',
      height: 350,
      width: double.infinity,
      fit: BoxFit.contain,
    );
  }
}
