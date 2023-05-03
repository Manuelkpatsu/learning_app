import 'package:flutter/material.dart';

class OnboardIllustration extends StatelessWidget {
  final String image;

  const OnboardIllustration({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        image,
        height: 370,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
