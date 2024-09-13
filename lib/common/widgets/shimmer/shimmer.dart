import 'package:flutter/material.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/helpers/helper_function.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffects extends StatelessWidget {
  const ShimmerEffects({super.key, required this.width, required this.height, this.radius = 15, this.color});

  final double  width , height , radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color?? (dark? AppColors.darkergrey : AppColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}