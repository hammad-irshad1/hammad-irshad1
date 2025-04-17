import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF006B7F),
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF006B7F)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF006B7F), // Button color
      foregroundColor: Colors.white, // Text color
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      padding: EdgeInsets.symmetric(horizontal: 44, vertical: 12),
    ),
  ),
);
