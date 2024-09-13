import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/image/rounded_image.dart';
import 'package:minimart/common/widgets/texts/brandtitleVerifyicon.dart';
import 'package:minimart/common/widgets/texts/product_title.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundImage(
          imageUrl: Timage.imageProduct6,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          background: HelperFunction.isDarkMode(context)
              ? AppColors.darkergrey
              : AppColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const BrandTitleWithVerification(title: 'Nike'),
            const ProductTitle(title: 'Black Sport Shoes', maxLines: 1),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            )),
          ],
        )
      ],
    );
  }
}
