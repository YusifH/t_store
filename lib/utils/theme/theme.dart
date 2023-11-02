import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:t_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TAppTextTheme.lightTextTheme,
    appBarTheme: TAppBarTheme.lightAppbarTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      appBarTheme: TAppBarTheme.darkAppbarTheme,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TAppTextTheme.darkTextTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme
  );
}