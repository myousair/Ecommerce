import 'package:flutter/material.dart';
import 'package:minimart/utils/constants/color.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: AppColors.darkergrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: AppColors.darkergrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
