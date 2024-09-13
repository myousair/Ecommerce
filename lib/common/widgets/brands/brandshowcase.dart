import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/brands/brandcard.dart';
import 'package:minimart/common/widgets/custom_shape/containers/rounded.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkgrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
              children: images
                  .map((images) => brandTopProductImageWidget(images, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String images, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: HelperFunction.isDarkMode(context)
            ? AppColors.darkergrey
            : AppColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: const Image(
            fit: BoxFit.contain, image: AssetImage(Timage.imageProduct2)),
      ),
    );
  }
}
