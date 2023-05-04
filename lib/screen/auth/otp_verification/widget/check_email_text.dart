import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CheckEmailText extends StatelessWidget {
  const CheckEmailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Check Email For OTP',
        style: TextStyle(
          color: CustomColor.titleColor,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          height: 1.36,
        ),
      ),
    );
  }
}
