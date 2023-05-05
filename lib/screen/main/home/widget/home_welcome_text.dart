import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class HomeWelcomeText extends StatelessWidget {
  const HomeWelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome!',
      style: TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 12,
        height: 1.5,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
