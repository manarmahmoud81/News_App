import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppStyles {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle primary15w500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static TextStyle subtitlesStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );

  static TextStyle black18w600Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );

  static TextStyle gray12w400Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grayColor,
  );

  static TextStyle black15w700Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );

  static TextStyle darkGrayStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.darkGrayColor,
  );
}
