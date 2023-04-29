import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

abstract  class AppStyles{
  static TextStyle get titleMedium {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static TextStyle get headingStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static TextStyle get subHeadingStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 20 ,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static TextStyle get titleStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 18 ,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static TextStyle get subTitleStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 16 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static TextStyle get bodyStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr : blackClr,
        fontSize: 14 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static TextStyle get subBodyStyle {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Get.isDarkMode? whiteClr.withOpacity(0.5) : whiteClr,
        fontSize: 14 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}