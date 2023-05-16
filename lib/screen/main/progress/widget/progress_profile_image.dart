import 'package:flutter/material.dart';

class ProgressProfileImage extends StatelessWidget {
  final String image;

  const ProgressProfileImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        border: Border.all(color: Colors.white, width: 2.5),
      ),
    );
  }
}
