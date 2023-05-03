import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/welcome.png',
        height: 370,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
