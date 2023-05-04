import 'package:flutter/material.dart';
import 'package:learning_app/screen/auth/password_changed_success/password_reset_success_screen.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/password_input_field.dart';
import 'package:learning_app/utils/validator.dart';

import 'widget/create_new_password_text.dart';
import 'widget/reset_password_image.dart';
import 'widget/reset_password_info_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const routeName = '/reset_password';

  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _resetPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscureOldPasswordText = true;
  bool _obscureNewPasswordText = true;
  bool _obscureConfirmPasswordText = true;

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Form(
          key: _resetPasswordFormKey,
          child: Column(
            children: [
              const ResetPasswordImage(),
              const SizedBox(height: 30),
              const CreateNewPasswordText(),
              const SizedBox(height: 10),
              const ResetPasswordInfoText(),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PasswordInputField(
                  controller: _oldPasswordController,
                  hintText: 'Old Password',
                  obscureText: _obscureOldPasswordText,
                  toggle: () => setState(() => _obscureOldPasswordText = !_obscureOldPasswordText),
                  inputAction: TextInputAction.next,
                  validator: Validator.currentPassword,
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PasswordInputField(
                  controller: _newPasswordController,
                  hintText: 'New Password',
                  obscureText: _obscureNewPasswordText,
                  toggle: () => setState(() => _obscureNewPasswordText = !_obscureNewPasswordText),
                  inputAction: TextInputAction.next,
                  validator: Validator.newPassword,
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PasswordInputField(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: _obscureConfirmPasswordText,
                  toggle: () =>
                      setState(() => _obscureConfirmPasswordText = !_obscureConfirmPasswordText),
                  inputAction: TextInputAction.done,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Confirm password is required';
                    }

                    if (_newPasswordController.text.trim() !=
                        _confirmPasswordController.text.trim()) {
                      return "Passwords do not match";
                    }

                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GradientButton(
                  onPressed: () {
                    if (_resetPasswordFormKey.currentState!.validate()) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        PasswordResetSuccessScreen.routeName,
                        (route) => false,
                      );
                    }
                  },
                  widget: const Text('Reset Password'),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
