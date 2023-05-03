import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_color.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: CustomColor.scaffoldBackgroundColor,
      primaryColor: CustomColor.primaryColor,
      canvasColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: CustomColor.scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: CustomColor.appBarIconColor),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(
          color: CustomColor.titleColor,
          fontWeight: FontWeight.w700,
          fontSize: 22,
          height: 1.36,
        ),
      ),
      textTheme: GoogleFonts.manropeTextTheme(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomColor.primaryColor,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
          elevation: 0,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(33)),
          ),
          minimumSize: const Size.fromHeight(60),
        ),
      ),
    );
  }
}
