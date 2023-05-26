import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class WithPhotoText extends StatelessWidget {
  const WithPhotoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'with photo',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.reviewTextColor,
      ),
    );
  }
}
