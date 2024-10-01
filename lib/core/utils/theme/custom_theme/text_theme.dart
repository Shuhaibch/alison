import 'package:alison/core/utils/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CTextTheme {
  CTextTheme._();
  //?-------- Light Theme --------------
  static TextTheme lightTextTheme = TextTheme(
    //* headline
    headlineLarge:  GoogleFonts.rubik().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: CColors.primaryColor),
    headlineMedium:  GoogleFonts.rubik().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    headlineSmall:  GoogleFonts.rubik().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: CColors.primaryColor),

    //* displat
    displayLarge:  GoogleFonts.rubik().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: CColors.primaryColor),
    displayMedium:  GoogleFonts.rubik().copyWith(
        fontSize: 22, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    displaySmall:  GoogleFonts.rubik().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: CColors.primaryColor),

    //* title
    titleLarge:  GoogleFonts.rubik().copyWith(
        fontSize: 17, fontWeight: FontWeight.w600, color: CColors.primaryColor),
    titleMedium:  GoogleFonts.rubik().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: CColors.primaryColor),
    titleSmall:  GoogleFonts.rubik().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: CColors.primaryColor),

    //* body
    bodyLarge:  GoogleFonts.rubik().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CColors.primaryColor),
    bodyMedium:  GoogleFonts.rubik().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: CColors.primaryColor),
    bodySmall:  GoogleFonts.rubik().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: CColors.primaryColor.withOpacity(0.5)),

    //* label
    labelLarge:  GoogleFonts.rubik().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: CColors.primaryColor),
    labelMedium:  GoogleFonts.rubik().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
    labelSmall:  GoogleFonts.rubik().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );
}
