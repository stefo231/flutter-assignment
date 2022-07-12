import 'package:flutter/material.dart';

import 'custom_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: CustomColors.purple.color,
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          buttonColor: CustomColors.blue.color,
        ),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
        bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }
}