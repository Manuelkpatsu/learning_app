import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class FacebookButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const FacebookButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          height: 1.38,
        ),
        elevation: 0,
        foregroundColor: CustomColor.textFieldBorderColor,
        side: const BorderSide(color: CustomColor.textFieldBorderColor, width: 1.25),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(33)),
        ),
        minimumSize: const Size.fromHeight(60),
      ),
      child: Text('Sign up with facebook'.toUpperCase()),
    );
  }
}
