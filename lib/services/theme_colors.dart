import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color whiteClr = Colors.white;
const Color blackClr = Colors.black;
const primaryClr = Color(0xFF100b20);
const darkPrimaryClr = Color(0xFF121212);
const secondaryClr = Colors.lightBlue;
const darkSecondaryClr = Color(0xFF424242);

class ThemeColors{
  static Color get primary => Get.isDarkMode? darkPrimaryClr : primaryClr;
  static Color get secondary => Get.isDarkMode? darkSecondaryClr : secondaryClr;
}