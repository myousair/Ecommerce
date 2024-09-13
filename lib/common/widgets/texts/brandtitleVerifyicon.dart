import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/texts/brandTitleText.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/enums.dart';
import 'package:minimart/utils/constants/sizes.dart';

class BrandTitleWithVerification extends StatelessWidget {
  const BrandTitleWithVerification(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.textColor,
      this.iconColor = AppColors.Primary,
      this.textAlign = TextAlign.center,
      this.brandTextSizes = TextSizes.small});

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: BrandTitleText(
                title: title,
                color: textColor,
                maxLines: maxLines,
                textAlign: textAlign,
                brandTextSize: brandTextSizes)),
       const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs)
      ],
    );
  }
}
