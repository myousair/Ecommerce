import 'package:flutter/material.dart';

class AppColors {
  AppColors();

  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  static const Color Primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xffffe248);
  static const Color accent = Color(0xFFb0c7ff);

  static const Color textPrimary = Color(0xff333333);
  static const Color textsecondary = Color(0xff6c757D);
  static const Color textWhite = Colors.white;

  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primarybackground = Color(0xfff3f5ff);

  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757D);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  static const Color borderPrimary = Color(0xffD9D9D9);
  static const Color borderSecondary = Color(0xffE6E6E6);

  static const Color error = Color(0xffD32F2F);
  static const Color success = Color(0xff388E3C);
  static const Color warning = Color(0xfff57C00);
  static const Color info = Color(0xff1876D2);

  static const Color black = Color(0xff232323);
  static const Color darkergrey = Color(0xff4f4f4f);
  static const Color darkgrey = Color(0xff939393);
  static const Color grey = Color(0xffE0E0E0);
  static const Color sofyGrey = Color(0xfff4f4f4);
  static const Color LightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);

  static const Color primaryColor =
      Color(0xFF42A5F5); // Example of a primary color
  static const Color secondaryColor =
      Color(0xFFFFA726); // Example of a secondary color
  static const Color backgroundColor = Color(0xFFF5F5F5); // Background color
  static const Color accentColor =
      Color(0xFF4CAF50); // Accent color for UI elements
  static const Color textColor = Color(0xFF212121); // Default text color
  // You can add more colors as needed

  static const Color colorStormGray = Color(0xFF75788D); // Default text color
  //   static const Color colorDodgerBlue = Color(0xFF2378EF); // Default text color
  // static const Color colorWhite = Color(0xFFFFFFFF);

  static const Color colorUCLABlue = Color(0xFF3575b7);
  static const Color colorRobinEggBlue = Color(0xFF4ecdc4);
  static const Color colorMindaro = Color(0xFFfffd98);
  static const Color colorLightRed = Color(0xFFff6b6b);

  static const Color colorMagnolia = Color(0xFFfcf7ff);
}
