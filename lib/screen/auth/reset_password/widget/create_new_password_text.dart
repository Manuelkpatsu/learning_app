import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CreateNewPasswordText extends StatelessWidget {
  const CreateNewPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Create New Password',
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
