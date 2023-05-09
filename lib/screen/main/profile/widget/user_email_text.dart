import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class UserEmailText extends StatelessWidget {
  final String email;

  const UserEmailText({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: const TextStyle(
        color: CustomColor.hintColor,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
