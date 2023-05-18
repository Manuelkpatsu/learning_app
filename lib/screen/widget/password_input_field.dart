import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final void Function(String)? onChanged;
  final bool? isDense;
  final EdgeInsetsGeometry contentPadding;
  final double borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final VoidCallback? toggle;
  final bool? obscureText;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.isDense,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
    this.borderRadius = 49,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.toggle,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText!,
      cursorColor: CustomColor.primaryColor,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: CustomColor.primaryColor,
        height: 1.45,
      ),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        isDense: isDense,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ??
            IconButton(
              icon: obscureText!
                  ? const Icon(Icons.visibility_off, color: CustomColor.textFieldBorderColor)
                  : const Icon(Icons.visibility, color: CustomColor.textFieldBorderColor),
              onPressed: toggle,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CustomColor.textFieldBorderColor, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CustomColor.textFieldBorderColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CustomColor.primaryColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: CustomColor.errorColor.withOpacity(0.53), width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: CustomColor.errorColor.withOpacity(0.53), width: 1.0),
        ),
        filled: true,
        fillColor: fillColor ?? Colors.white,
        hintText: hintText,
        prefixIconColor: CustomColor.textFieldBorderColor,
        suffixIconColor: CustomColor.textFieldBorderColor,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColor.textFieldBorderColor,
          height: 1.38,
        ),
        errorStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: CustomColor.errorColor,
          height: 1.38,
        ),
      ),
      obscuringCharacter: '*',
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
