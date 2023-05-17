import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InstructorImage extends StatelessWidget {
  final String image;

  const InstructorImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundImage: AssetImage(image),
      backgroundColor: CustomColor.photoBackgroundColor,
    );
  }
}
