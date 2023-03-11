import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';
import '../theme/colors.dart';

import 'init.dart';

class AppLightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;
  @override
  Color backgroundColor = AppColor.background;
  @override
  Color scaffoldBackgroundColor = AppColor.background;

  @override
  IconThemeData iconTheme = const IconThemeData(
    color: AppColor.lightText,
  );
  @override
  ColorScheme colorScheme = const ColorScheme(
    primary: AppColor.primary,
    onPrimary: Colors.white,
    primaryContainer: AppColor.primaryContainer,
    secondary: AppColor.secondary,
    onSecondary: AppColor.lightText,
    secondaryContainer: AppColor.lightText,
    surface: Colors.white,
    onSurface: AppColor.lightText,
    background: AppColor.background,
    onBackground: AppColor.lightText,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  @override
  TextTheme textTheme = TextTheme(
    ///HeadLine
    displayLarge: TextStyle(
      fontSize: 12.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    displayMedium: TextStyle(
      fontSize: 13.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    displaySmall: TextStyle(
      fontSize: 18.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    headlineMedium: TextStyle(
      fontSize: 15.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    titleLarge: TextStyle(
      fontSize: 26.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),

    ///BodyText
    bodyLarge: TextStyle(
      fontSize: 16.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 10.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    titleMedium: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w500,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    titleSmall: TextStyle(
      fontSize: 8.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 11.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
  );

  @override
  AppBarTheme appBarTheme = const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      toolbarHeight: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));

  @override
  Color indicatorColor = AppColor.primary;

  @override
  InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    border: InputBorder.none,
    
  
  );
}
