import 'package:app_test_vacancy/data/const.dart';
import 'package:flutter/material.dart';

final kThemeLight = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kColorScaffoldBGLight,
  primaryTextTheme: TextTheme(
    bodyLarge: TextStyle(
      color: kColorTextBodyPrimaryLight,
    ),
    bodyMedium: TextStyle(
      color: kColorTextBodyPrimaryLight,
    ),
    bodySmall: TextStyle(
      color: kColorTextBodyPrimaryLight,
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: kColorAppBarBGlight,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: kColorTextTitleLight,
      fontSize: 18,
      fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
    ),
  ),
);
