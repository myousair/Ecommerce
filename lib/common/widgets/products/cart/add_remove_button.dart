import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/icon/circularIcon.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class ProductQuantityaddremove extends StatelessWidget {
  const ProductQuantityaddremove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: HelperFunction.isDarkMode(context)
              ? AppColors.white
              : AppColors.black,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: TSizes.spaceBtwItems),
        const CircularIcon(
          icon: Iconsax.add,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.Primary,
        ),
      ],
    );
  }
}
