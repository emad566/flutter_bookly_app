import 'package:flutter/material.dart';

abstract  class AppColors{
  //Generic Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  //Light Mode
  static const Color primaryText = Colors.black;
  static const Color secondaryText = Color(0xFF666666);
  static const Color tripleText = Color(0xFF999999);
  static const Color primaryBg = Color(0xFFCCCCCC);
  static  Color secondaryBg = Colors.black.withOpacity(.9);
  static const Color tripleBg = Color(0xFF666666);
  static const Color star = Colors.deepOrange;

  //DarkMode Mode
  static const Color darkPrimaryText = Colors.white;
  static const Color darkSecondaryText = Color(0xFF999999);
  static const Color darkTripleText = Color(0xFF666666);
  static const Color darkPrimaryBg = Color(0xFF100b20);
  static const Color darkSecondaryBg = Colors.white54;
  static const Color darkTripleBg = Colors.green;
  static const Color darkStar = Colors.yellow;
}