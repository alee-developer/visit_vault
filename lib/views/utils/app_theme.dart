import 'package:flutter/material.dart';
import 'package:visit_vault/views/utils/colors.dart';
import 'package:visit_vault/views/utils/extensions/text_style_extensions.dart';

class AppTheme {
  ThemeData getAppTheme() => ThemeData(
      primaryColor: primaryColor,
      // colorScheme: const ColorScheme.dark(
      //     onPrimary: primaryColor, background: colorWhite),
      appBarTheme: _appBarTheme(),
      elevatedButtonTheme: _buttonThemeData(),
      floatingActionButtonTheme: _floatingActionButtonThemeData,
      dialogTheme: _dialogTheme());

  AppBarTheme _appBarTheme() =>
       AppBarTheme(backgroundColor: primaryColor,titleTextStyle: TextStyle().whiteTitleTextStyle);

  ElevatedButtonThemeData _buttonThemeData() => ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor,
      ));

  DialogTheme _dialogTheme() =>
      DialogTheme(contentTextStyle: const TextStyle().primaryTextStyle);

  get _floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData(backgroundColor: secondaryColor);
}
