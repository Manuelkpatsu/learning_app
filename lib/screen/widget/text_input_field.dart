import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_app/theme/custom_color.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final String? prefixText;
  final String? suffixText;
  final TextStyle? prefixTextStyle;
  final TextStyle? suffixTextStyle;
  final BoxConstraints? prefixIconConstraints;
  final void Function(String)? onChanged;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final bool autofocus;
  final EdgeInsetsGeometry contentPadding;
  final bool? enabled;
  final bool readOnly;
  final void Function(String)? onFieldSubmitted;
  final bool? isDense;
  final double borderRadius;
  final Color? fillColor;

  const TextInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.maxLines,
    this.inputFormatters,
    this.autofillHints,
    this.onTap,
    this.onSaved,
    this.autofocus = false,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
    this.enabled,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.isDense,
    this.borderRadius = 49,
    this.prefix,
    this.prefixIconConstraints,
    this.fillColor,
    this.prefixText,
    this.suffixText,
    this.prefixTextStyle,
    this.suffixTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      cursorColor: CustomColor.primaryColor,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: CustomColor.primaryColor,
        height: 1.45,
      ),
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      onTap: onTap,
      onSaved: onSaved,
      enabled: enabled,
      readOnly: readOnly,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        isDense: isDense,
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIconConstraints: prefixIconConstraints,
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
          borderSide: const BorderSide(color: CustomColor.errorColor, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CustomColor.errorColor, width: 1.0),
        ),
        filled: true,
        fillColor: fillColor ?? Colors.white,
        hintText: hintText,
        suffixText: suffixText,
        prefixText: prefixText,
        suffixStyle: suffixTextStyle,
        prefixStyle: prefixTextStyle,
        prefixIconColor: CustomColor.textFieldBorderColor,
        suffixIconColor: CustomColor.textFieldBorderColor,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColor.textFieldBorderColor,
          height: 1.38,
        ),
        errorStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: CustomColor.errorColor.withOpacity(0.53),
          height: 1.38,
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
    );
  }
}
