import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData gnr8theme = ThemeData(
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white),
  ),
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
    surface: AppColors.black,
    onSurface: AppColors.back,
    brightness: Brightness.dark,
    background: AppColors.black,
    onBackground: AppColors.grey,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    onSecondary: Colors.lightGreenAccent,
    onPrimary: Colors.green,
    onError: Colors.redAccent,
    error: Colors.red,
  ),
  textTheme: GoogleFonts.interTextTheme().copyWith(
    bodySmall: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
    headlineSmall: TextStyle(
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 70,
      fontWeight: FontWeight.w900,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w100,
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w100,
    ),
    labelSmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w100,
    ),
  ),
);
