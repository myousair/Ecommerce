import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/icon/circularIcon.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkergrey : AppColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                  icon: Iconsax.minus,
                  backgroundColor: AppColors.darkgrey,
                  width: 40,
                  height: 40,
                  color: AppColors.white),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),
              const CircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: AppColors.black,
                  width: 40,
                  height: 40,
                  color: AppColors.white),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: AppColors.black,
                side: const BorderSide(
                  color: AppColors.black,
                )),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
