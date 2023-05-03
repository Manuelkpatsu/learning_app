import 'package:flutter/material.dart';
import 'package:learning_app/screen/auth/sign_in/sign_in_screen.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/password_input_field.dart';
import 'package:learning_app/screen/widget/text_input_field.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/validator.dart';

import 'widget/already_have_account.dart';
import 'widget/facebook_button.dart';
import 'widget/sign_up_image.dart';
import 'widget/sign_up_or_text.dart';
import 'widget/sign_up_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureRegisterPasswordText = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _registerFormKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SignUpImage(),
                const SizedBox(height: 20),
                const SignUpText(),
                const SizedBox(height: 20),
                TextInputField(
                  controller: _fullNameController,
                  hintText: 'Name',
                  suffixIcon: const Icon(Icons.check, color: CustomColor.textFieldBorderColor),
                  textCapitalization: TextCapitalization.words,
                  inputAction: TextInputAction.next,
                  validator: Validator.fullName,
                ),
                const SizedBox(height: 18),
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
                  obscureText: _obscureRegisterPasswordText,
                  inputAction: TextInputAction.done,
                  validator: Validator.password,
                  toggle: () =>
                      setState(() => _obscureRegisterPasswordText = !_obscureRegisterPasswordText),
                ),
                const SizedBox(height: 15),
                const SignUpOrText(),
                const SizedBox(height: 15),
                FacebookButton(onPressed: () {}),
                const SizedBox(height: 18),
                GradientButton(
                  onPressed: () {
                    if (_registerFormKey.currentState!.validate()) {
                      debugPrint('Sign up successful!');
                    }
                  },
                  widget: const Text('Sign up'),
                ),
                const SizedBox(height: 20),
                AlreadyHaveAccount(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignInScreen.routeName);
                  },
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
