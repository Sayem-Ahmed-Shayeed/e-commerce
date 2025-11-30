import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MyTextFormFieldTheme {
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: MyColors.secondary,
    floatingLabelStyle: const TextStyle(color: MyColors.secondary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.borderRadiusLg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: MyColors.secondary),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: MyColors.primary,
    floatingLabelStyle: const TextStyle(color: MyColors.primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.borderRadiusLg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(MySizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: MyColors.primary),
    ),
  );
}
