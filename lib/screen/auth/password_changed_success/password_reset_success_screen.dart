import 'package:flutter/material.dart';
import 'package:learning_app/screen/auth/sign_in/sign_in_screen.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';

import 'widget/check_image.dart';
import 'widget/password_success_image.dart';
import 'widget/successful_info_text.dart';
import 'widget/successful_text.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  static const routeName = '/password_changed_success';

  const PasswordResetSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const PasswordSuccessImage(),
            const SizedBox(height: 40),
            const CheckImage(),
            const SizedBox(height: 20),
            const SuccessfulText(),
            const SizedBox(height: 10),
            const SuccessfulInfoText(),
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GradientButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    SignInScreen.routeName,
                    (route) => false,
                  );
                },
                widget: const Text('Get Started'),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
