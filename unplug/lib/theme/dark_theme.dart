import 'package:flutter/material.dart';

ThemeData buildDarkTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: const Color(0xFF121212),
    cardColor: const Color(0xFF1E1E1E),
    primaryColor: Colors.black,
    colorScheme: base.colorScheme.copyWith(
      secondary: const Color(0xFF2196F3), // accent
    ),
    textTheme: base.textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2196F3),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    cardTheme: const CardThemeData(
      color: Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      elevation: 3,
    ),
  );
}