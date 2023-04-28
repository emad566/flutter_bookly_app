import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final ThemeData lightThem = ThemeData(
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: ThemeColors.primary,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
        color: ThemeColors.primary,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
      background: ThemeColors.primary,
      brightness: Brightness.light,
    ),
  );

  static final ThemeData darkThem = ThemeData(
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: ThemeColors.primary,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      color: ThemeColors.primary,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
      background: ThemeColors.primary,
      brightness: Brightness.dark,
    ),
  );

  static TextStyle get headingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  static TextStyle get subHeadingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 20 ,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  static TextStyle get titleStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 18 ,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  static TextStyle get subTitleStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 16 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }
  static TextStyle get bodyStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 14 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }
  static TextStyle get subBodyStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr.withOpacity(0.5) : whiteClr,
        fontSize: 14 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }

}