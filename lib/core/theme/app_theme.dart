
import 'package:flutter/material.dart';

class AppTheme {
  static const Color navy = Color(0xFF171B3D);
  static const Color purple = Color(0xFF7657E8);
  static const Color lavender = Color(0xFFF0EDFF);
  static const Color gold = Color(0xFFFFC857);
  static const Color background = Color(0xFFF7F6FC);

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: purple,
        primary: purple,
        secondary: gold,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        foregroundColor: navy,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
