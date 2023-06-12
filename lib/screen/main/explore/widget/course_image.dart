import 'package:flutter/material.dart';

class CourseImage extends StatelessWidget {
  final String image;

  const CourseImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        image,
        width: 96,
        height: 85,
        fit: BoxFit.contain,
      ),
    );
  }
}
