import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/text_input_field.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/validator.dart';

import 'widget/forgot_password_image.dart';
import 'widget/forgot_password_info_text.dart';
import 'widget/forgot_password_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _forgotPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _forgotPasswordFormKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const ForgotPasswordImage(),
                const SizedBox(height: 50),
                const ForgotPasswordText(),
                const SizedBox(height: 10),
                const ForgotPasswordInfoText(),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextInputField(
                    controller: _emailController,
                    hintText: 'Email',
                    suffixIcon: const Icon(Icons.check, color: CustomColor.textFieldBorderColor),
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                    validator: Validator.email,
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: GradientButton(
                    onPressed: () {
                      if (_forgotPasswordFormKey.currentState!.validate()) {
                        debugPrint('Successful!');
                      }
                    },
                    widget: const Text('Send Email'),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
