import 'package:ecommerce/utils/theme/text_theme/dark_text_theme.dart';
import 'package:ecommerce/utils/theme/text_theme/light_text_theme.dart';
import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'poppings',
    primaryColor: Colors.blue,
    textTheme: lightTextTheme,
  );
  
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: 'poppings',
    primaryColor: Colors.blue,
    textTheme: darkTextTheme,
  );
}
