import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/theme/gradient.dart';

import 'profile_job_text.dart';
import 'profile_name_text.dart';
import 'progress_profile_image.dart';

class ProfilePromoter extends StatelessWidget {
  final String profileImage;
  final String profileName;
  final String job;

  const ProfilePromoter({
    Key? key,
    required this.profileImage,
    required this.profileName,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: CustomGradient.primaryGradient,
        boxShadow: [
          BoxShadow(
            color: CustomColor.containerShadowColor.withOpacity(0.12),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(IconlyLight.edit, color: CustomColor.appBarIconColor),
            ),
          ),
          Row(
            children: [
              ProgressProfileImage(image: profileImage),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileNameText(name: profileName),
                    ProfileJobText(job: job),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
