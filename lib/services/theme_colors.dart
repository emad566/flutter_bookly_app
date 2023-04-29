import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color whiteClr = Colors.white;
const Color blackClr = Colors.black;
const primaryClr = Color(0xFFCCCCCC);
const darkPrimaryClr = Color(0xFF100b20);
const frontClr = Colors.black;
const darkFrontClr = Colors.white;
var secondaryClr = Colors.black.withOpacity(.9);
const darkSecondaryClr = Colors.white54;
const starClr = Colors.yellowAccent;
const darkStarClr = Colors.yellowAccent;

abstract  class ThemeColors{
  static Color get primary => Get.isDarkMode? darkPrimaryClr : primaryClr;
  static Color get secondary => Get.isDarkMode? darkSecondaryClr : secondaryClr;
  static Color get front => Get.isDarkMode? darkFrontClr : frontClr;
  static Color get star => Get.isDarkMode? darkStarClr : starClr;
}