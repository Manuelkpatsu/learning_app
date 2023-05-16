import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/empty_progress_image.dart';
import 'widget/profile_promoter.dart';
import 'widget/tracking_progress_text.dart';

class ProgressScreen extends StatelessWidget {
  static const routeName = '/progress';

  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'E-Learning Platform'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(IconlyLight.notification, color: CustomColor.primaryColor),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(Icons.more_vert, color: CustomColor.primaryColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const ProfilePromoter(
              profileImage: 'assets/images/profile-1.png',
              profileName: 'David Waley',
              job: 'Web Designer',
            ),
            const SizedBox(height: 40),
            const TrackingProgressText(),
            const SizedBox(height: 50),
            const EmptyProgressImage(),
            const SizedBox(height: 30),
            GradientButton(
              onPressed: () {},
              widget: const Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Start Learning'),
                    ),
                  ),
                  Icon(IconlyLight.arrow_right_2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
