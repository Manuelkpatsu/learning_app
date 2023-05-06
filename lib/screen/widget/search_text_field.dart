import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;

  const SearchTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      cursorColor: CustomColor.titleColor,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: CustomColor.titleColor,
        height: 1.5,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        suffixIcon: const Icon(IconlyLight.search, size: 24, color: CustomColor.yellowColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        suffixIconColor: CustomColor.yellowColor,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: CustomColor.hintColor,
          height: 1.5,
        ),
      ),
      textInputAction: TextInputAction.search,
    );
  }
}
