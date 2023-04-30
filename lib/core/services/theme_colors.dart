import 'package:flutter/material.dart';
import 'package:flutter_bookly_app/core/constants/app_colors.dart';
import 'package:get/get.dart';

abstract class ThemeColors {
  // Theme Generic Colors
  static Color get white => Get.isDarkMode ? AppColors.white : AppColors.white;
  static Color get black => Get.isDarkMode ? AppColors.black : AppColors.black;

  //ThemeColors
  static Color get primaryText =>
      Get.isDarkMode ? AppColors.darkPrimaryText : AppColors.primaryText;
  static Color get secondaryText =>
      Get.isDarkMode ? AppColors.darkSecondaryText : AppColors.secondaryText;
  static Color get tripleText =>
      Get.isDarkMode ? AppColors.darkTripleText : AppColors.tripleText;
  static Color get primaryBg =>
      Get.isDarkMode ? AppColors.darkPrimaryBg : AppColors.primaryBg;
  static Color get secondaryBg =>
      Get.isDarkMode ? AppColors.darkSecondaryBg : AppColors.secondaryBg;
  static Color get tripleBg =>
      Get.isDarkMode ? AppColors.darkTripleBg : AppColors.tripleBg;
  static Color get star => Get.isDarkMode ? AppColors.darkStar : AppColors.star;
}
