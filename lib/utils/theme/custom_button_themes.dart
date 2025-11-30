import 'package:flutter/material.dart';

class MyElevatedTheme {
  MyElevatedTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
    ),
  );
}
