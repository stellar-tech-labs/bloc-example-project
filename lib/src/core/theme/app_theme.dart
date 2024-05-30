import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
      );
}
