import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // App colors
  static const Color primaryRed = Color(0xFFE53945);
  static const Color darkRed = Color(0xFFC72735);
  static const Color secondaryTeal = Color(0xFF159B96);
  static const Color navy = Color(0xFF17243A);
  static const Color background = Color(0xFFF7F8FC);
  static const Color mutedText = Color(0xFF6D7788);
  static const Color border = Color(0xFFE8EBF1);

  // Global light theme
  static ThemeData get lightTheme {
    final baseTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryRed,
        primary: primaryRed,
        secondary: secondaryTeal,
        surface: Colors.white,
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.dmSansTextTheme(
        baseTheme.textTheme,
      ),
    );
  }
}