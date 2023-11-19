import 'package:coo_sport/utils/constants/colors.dart';
import 'package:coo_sport/utils/theme/widgets_themes/appbar_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/bottom_sheet_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/checkbox_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/chip_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/elevated_button_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/outlined_button_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/text_field_theme.dart';
import 'package:coo_sport/utils/theme/widgets_themes/text_theme.dart';
import "package:flutter/material.dart";

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
}
