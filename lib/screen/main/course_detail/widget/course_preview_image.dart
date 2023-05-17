import 'package:flutter/material.dart';

class CoursePreviewImage extends StatelessWidget {
  final String image;

  const CoursePreviewImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 205,
      height: 182,
      fit: BoxFit.contain,
    );
  }
}
