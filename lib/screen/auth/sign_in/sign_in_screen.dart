import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/password_input_field.dart';
import 'package:learning_app/screen/widget/text_input_field.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/validator.dart';

import 'widget/create_account.dart';
import 'widget/forgot_password_button.dart';
import 'widget/sign_in_image.dart';
import 'widget/sign_in_text.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/sign_in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _loginFormKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SignInImage(),
                const SizedBox(height: 20),
                const SignInText(),
                const SizedBox(height: 20),
                TextInputField(
                  controller: _emailController,
                  hintText: 'Email',
                  suffixIcon: const Icon(Icons.check, color: CustomColor.textFieldBorderColor),
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: Validator.email,
                ),
                const SizedBox(height: 18),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  suffixIcon: const Icon(Icons.check, color: CustomColor.textFieldBorderColor),
                  inputAction: TextInputAction.done,
                  validator: Validator.password,
                ),
                const SizedBox(height: 11),
                ForgotPasswordButton(onTap: () {}),
                const SizedBox(height: 25),
                GradientButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {
                      debugPrint('Login successfully!');
                    }
                  },
                  widget: const Text('Login'),
                ),
                const SizedBox(height: 20),
                CreateAccount(onTap: () {}),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
