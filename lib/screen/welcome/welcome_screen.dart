import 'package:flutter/material.dart';
import 'package:learning_app/screen/auth/sign_in/sign_in_screen.dart';
import 'package:learning_app/screen/widget/custom_button.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';

import 'widget/or_text.dart';
import 'widget/welcome_image.dart';
import 'widget/welcome_info_text.dart';
import 'widget/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const WelcomeImage(),
            const SizedBox(height: 20),
            const WelcomeText(),
            const SizedBox(height: 12),
            const WelcomeInfoText(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: CustomButton(
                widget: const Text('Sign in'),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    SignInScreen.routeName,
                    (route) => false,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const OrText(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: GradientButton(
                widget: const Text('Sign up'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
