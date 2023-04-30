import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Themes {
  static final ThemeData lightThem = ThemeData(
    primaryColor: AppColors.primaryBg,
    scaffoldBackgroundColor: AppColors.primaryBg,
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryBg,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
          background: AppColors.primaryBg,
          brightness: Brightness.light,
        ),
  );

  static final ThemeData darkThem = ThemeData(
    primaryColor: AppColors.darkPrimaryBg,
    scaffoldBackgroundColor: AppColors.darkPrimaryBg,
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    appBarTheme: const AppBarTheme(
      color: AppColors.darkPrimaryBg,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
          background: AppColors.darkPrimaryBg,
          brightness: Brightness.dark,
        ),
  );
}
