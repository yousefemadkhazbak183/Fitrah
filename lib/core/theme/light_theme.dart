import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF556B2F),
    primary: const Color(0xFF556B2F),
    secondary: const Color(0xFF8A9A5B),
    surface: const Color(0xFFFAF9F6),
    onSurface: const Color(0xFFF5F5DC),
  ),

  fontFamily: 'Tajawal',
  cardTheme: CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Color(0xFF2D2D2D),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
