import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class InstructorImage extends StatelessWidget {
  final String image;
  final double size;

  const InstructorImage({Key? key, required this.image, this.size = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(image),
      backgroundColor: CustomColor.photoBackgroundColor,
    );
  }
}
