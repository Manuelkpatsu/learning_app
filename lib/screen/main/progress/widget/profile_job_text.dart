import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class ProfileJobText extends StatelessWidget {
  final String job;

  const ProfileJobText({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      job,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
