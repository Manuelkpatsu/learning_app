import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ProfileNameText extends StatelessWidget {
  final String name;

  const ProfileNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.38,
      ),
    );
  }
}
