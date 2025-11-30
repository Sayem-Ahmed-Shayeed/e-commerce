import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class MyTextTheme {
  MyTextTheme._();

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: MyColors.dark,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: MyColors.dark,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: MyColors.dark,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MyColors.dark,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: MyColors.dark,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: MyColors.dark,
    ),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, color: MyColors.dark),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      color: MyColors.dark.withValues(alpha: 0.8),
    ),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: MyColors.white,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: MyColors.white,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: MyColors.white,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MyColors.white,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: MyColors.white,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: MyColors.white,
    ),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, color: MyColors.white),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      color: MyColors.white.withValues(alpha: 0.8),
    ),
  );
}
