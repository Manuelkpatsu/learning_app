import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class BookmarkButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BookmarkButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: CustomColor.yellowColor.withOpacity(0.1),
      highlightColor: CustomColor.yellowColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(5),
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Icon(IconlyLight.bookmark, color: CustomColor.yellowColor, size: 24),
      ),
    );
  }
}
