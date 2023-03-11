import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTheme {
  late final Brightness brightness;
  late final Color backgroundColor;
  late final Color scaffoldBackgroundColor;
  late final IconThemeData iconTheme;
  late final ColorScheme colorScheme;
  late final TextTheme textTheme;
  late final AppBarTheme appBarTheme;
  late final Color indicatorColor;
  late final InputDecorationTheme inputDecorationTheme;
}

ThemeData getTheme<T extends AppTheme>(T theme) => ThemeData(
      primaryColorDark: AppColor.primary,
      primaryColorLight: AppColor.primary,
      colorScheme: theme.colorScheme,
      scaffoldBackgroundColor: theme.scaffoldBackgroundColor,
      textTheme: theme.textTheme,
      appBarTheme: theme.appBarTheme,
      iconTheme: theme.iconTheme,
      brightness: theme.brightness,
      indicatorColor: theme.indicatorColor,
      inputDecorationTheme: theme.inputDecorationTheme,
    );
