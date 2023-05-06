import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class FriendImage extends StatelessWidget {
  final String image;

  const FriendImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 83,
      decoration: BoxDecoration(
        color: CustomColor.imageBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
