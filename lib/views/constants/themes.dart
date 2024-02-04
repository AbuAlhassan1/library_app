import 'package:flutter/material.dart';
import 'package:library_app/views/constants/colors.dart' as app;

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.DimsColors.offWhite,
    colorScheme: ColorScheme.light(
      primary: app.DimsColors.black,
      secondary: app.DimsColors.mainOrange,
      error: app.DimsColors.error,
      background: app.DimsColors.offWhite,
      brightness: Brightness.light
    ),
    fontFamily: 'Noto Sans Arabic',
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.DimsColors.deepBlue,
    colorScheme: ColorScheme.light(
      primary: app.DimsColors.white,
      secondary: app.DimsColors.mainOrange,
      error: app.DimsColors.error,
      background: app.DimsColors.deepBlue,
      brightness: Brightness.dark
    ),
  );
}