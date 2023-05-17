import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/screen/widget/arrow_icon.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'introduction_text.dart';
import 'introduction_video_duration.dart';

class IntroductionVideoButton extends StatelessWidget {
  final VoidCallback? onTap;

  const IntroductionVideoButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: CustomColor.containerShadowColor.withOpacity(0.12),
              offset: const Offset(0, 15),
              blurRadius: 60,
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    ArrowIcon(icon: IconlyLight.play),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntroductionText(),
                          IntroductionVideoDuration(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(color: CustomColor.bodyColor.withOpacity(0.4), thickness: 1),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    IconlyLight.arrow_right_2,
                    color: CustomColor.appBarIconColor,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
