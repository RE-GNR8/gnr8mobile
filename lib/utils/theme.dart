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
  textTheme: GoogleFonts.montserratTextTheme().copyWith(
    bodySmall: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
    ),
  ),
);
