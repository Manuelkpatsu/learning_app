import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';

import 'widget/custom_divider.dart';
import 'widget/nav_tile.dart';
import 'widget/profile_photo.dart';
import 'widget/user_email_text.dart';
import 'widget/user_name_text.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        title: Row(
          children: [
            const ProfilePhoto(photo: 'assets/images/profile-1.png'),
            const SizedBox(width: 7),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  UsernameText(name: 'MD.HASIB'),
                  UserEmailText(email: 'info.khanclub@gmail.com'),
                ],
              ),
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: CustomDivider(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavTile(
              title: 'Skill Development',
              icon: Icons.health_and_safety_outlined,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'My Details',
              icon: Icons.contact_mail_outlined,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'My Address',
              icon: Icons.location_on_outlined,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'Payment Methods',
              icon: Icons.payment_rounded,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'Promo Code',
              icon: Icons.money_rounded,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'Notifications',
              icon: Icons.notifications_none_rounded,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'Help',
              icon: Icons.help_outline_rounded,
              onPressed: () {},
            ),
            const CustomDivider(),
            NavTile(
              title: 'About',
              icon: Icons.info_outline_rounded,
              onPressed: () {},
            ),
            const CustomDivider(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GradientButton(
                widget: const Text('Log out'),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
