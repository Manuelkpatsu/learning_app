import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class BookmarkButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double iconSize;
  final Color iconColor;

  const BookmarkButton({
    Key? key,
    required this.onPressed,
    this.iconSize = 24,
    this.iconColor = CustomColor.yellowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: iconColor.withOpacity(0.1),
      highlightColor: iconColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Icon(IconlyLight.bookmark, color: iconColor, size: iconSize),
      ),
    );
  }
}
