import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'translate_text.dart';
import 'translation_tile.dart';

class TranslateWidget extends StatelessWidget {
  const TranslateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TranslateText(),
          SizedBox(height: 10),
          TranslationTile(
            duration: Duration(hours: 0, minutes: 1),
            description:
                "Good job setting up profiles on social media sites and UX design communities. These profiles are helpful to find a job and to connect with other UX designers. Now, we're going to put your online profile to use. In this video, we'll discuss networking and finding a mentor, and how both of these can help you kickstart your career in UX design. Before we dig in, let's explore why networking is important.",
          ),
          SizedBox(height: 10),
          TranslationTile(
            duration: Duration(hours: 0, minutes: 55),
            description:
                "UX designer who gives pointers about creating an online portfolio or acing the job interview. Keep in mind, most people like to help other people succeed, and experienced UX designers remember what it's like to start their careers. Don't be afraid to seek out a mentor. You might be surprised how happy people are to help you. There are a lot of ways to find a mentor.",
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
