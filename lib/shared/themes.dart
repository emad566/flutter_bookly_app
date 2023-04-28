import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/services/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final ThemeData lightThem = ThemeData(
    primaryColor: primaryClr,
    scaffoldBackgroundColor: primaryClr,
    fontFamily: GoogleFonts
        .poppins()
        .fontFamily,
    appBarTheme: const AppBarTheme(
      color: primaryClr,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
      background: primaryClr,
      brightness: Brightness.light,
    ),
  );

  static final ThemeData darkThem = ThemeData(
    primaryColor: darkPrimaryClr,
    scaffoldBackgroundColor: darkPrimaryClr,
    fontFamily: GoogleFonts
        .poppins()
        .fontFamily,
    appBarTheme: const AppBarTheme(
      color: darkPrimaryClr,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
      background: darkPrimaryClr,
      brightness: Brightness.dark,
    ),
  );
}