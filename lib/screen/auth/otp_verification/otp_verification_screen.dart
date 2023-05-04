import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:learning_app/utils/validator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widget/check_email_text.dart';
import 'widget/otp_verification_image.dart';
import 'widget/otp_verification_info_text.dart';
import 'widget/resend_code.dart';

class OTPVerificationScreen extends StatefulWidget {
  static const routeName = '/otp_verification';

  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Form(
          key: _otpFormKey,
          child: Column(
            children: [
              const OTPVerificationImage(),
              const SizedBox(height: 30),
              const CheckEmailText(),
              const SizedBox(height: 10),
              const OTPVerificationInfoText(),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  validator: Validator.code,
                  appContext: context,
                  length: 4,
                  cursorColor: CustomColor.primaryColor,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.primaryColor,
                    height: 1.45,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    borderWidth: 1,
                    fieldHeight: 60,
                    fieldWidth: 60,
                    errorBorderColor: CustomColor.errorColor.withOpacity(0.53),
                    activeColor: CustomColor.primaryColor,
                    selectedColor: CustomColor.primaryColor,
                    inactiveColor: CustomColor.textFieldBorderColor,
                  ),
                  animationType: AnimationType.fade,
                  errorTextSpace: 25,
                  onChanged: (code) {},
                  inputFormatters: [LengthLimitingTextInputFormatter(4)],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GradientButton(
                  onPressed: () {
                    if (_otpFormKey.currentState!.validate()) {
                      debugPrint('Successful!');
                    }
                  },
                  widget: const Text('Continue'),
                ),
              ),
              const SizedBox(height: 20),
              ResendCode(onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
