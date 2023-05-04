import 'package:flutter/material.dart';

class ResetPasswordImage extends StatelessWidget {
  const ResetPasswordImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/new-password.png',
      height: 350,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
