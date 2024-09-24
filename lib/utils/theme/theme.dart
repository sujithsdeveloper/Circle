import 'package:flutter/material.dart';

class ThemeClass {
  Color lightPrimaryColor = Colors.grey;
  Color darkPrimaryColor = Colors.white;

  // Define text colors for light and dark themes
  static const Color lightTextColor = Colors.white;
  static const Color darkTextColor = Colors.black;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.lightPrimaryColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: lightTextColor), // Updated style
      bodyLarge: TextStyle(color: lightTextColor), // Updated style
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark()
        .copyWith(primary: _themeClass.darkPrimaryColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: darkTextColor), // Updated style
      bodyLarge: TextStyle(color: darkTextColor), // Updated style
    ),
  );
}

ThemeClass _themeClass = ThemeClass();
