import 'package:flutter/material.dart';

class NextText extends StatelessWidget {
  const NextText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Next',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.38,
      ),
    );
  }
}
