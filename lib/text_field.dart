import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = new InputDecorationTheme(
  filled: true,
  hintStyle: TextStyle(
    fontSize: 14,
    letterSpacing: 1.5
  ),
  fillColor: Colors.purple.withOpacity(0.1),
  contentPadding: EdgeInsets.all(16),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide.none
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide.none
  ),
);