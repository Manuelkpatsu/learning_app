import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class SeeMoreButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SeeMoreButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          children: const [
            Text(
              'See More',
              style: TextStyle(
                color: CustomColor.titleColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            SizedBox(width: 3),
            Icon(
              IconlyLight.arrow_right_2,
              size: 18,
              color: CustomColor.appBarIconColor,
            ),
          ],
        ),
      ),
    );
  }
}
