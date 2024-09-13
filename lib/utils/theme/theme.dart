import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart/utils/theme/custom_theme/appbar_theme.dart';
import 'package:minimart/utils/theme/custom_theme/bottomsheet_theme.dart';
import 'package:minimart/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:minimart/utils/theme/custom_theme/chip_theme.dart';
import 'package:minimart/utils/theme/custom_theme/elevationbutton_theme.dart';
import 'package:minimart/utils/theme/custom_theme/outlinedbutton_theme.dart';
import 'package:minimart/utils/theme/custom_theme/text_theme.dart';
import 'package:minimart/utils/theme/custom_theme/textformfield_theme.dart';

class AppTheme {
  AppTheme();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    brightness: Brightness.light,
    primaryColor: const Color(0xffCF2424),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TtextTheme.lightTextTheme,
    chipTheme: TchipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevationButtonTheme.lightElevationButtonTheme,
    outlinedButtonTheme: TOutlinedThemeButton.lightOutlinedThemeButton,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    brightness: Brightness.dark,
    primaryColor: const Color(0xffCF2424),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TtextTheme.darkTextTheme,
    chipTheme: TchipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevationButtonTheme.darkElevationButtonTheme,
    outlinedButtonTheme: TOutlinedThemeButton.darkOutlinedThemeButton,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}
