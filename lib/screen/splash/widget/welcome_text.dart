import 'package:flutter/material.dart';
import 'package:learning_app/theme/gradient.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome To\nE-Learning Platform',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 1.3,
        foreground: Paint()..shader = textLinearGradient,
      ),
    );
  }
}
