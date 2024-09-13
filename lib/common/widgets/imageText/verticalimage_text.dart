import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/image/circular_image.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class VerticalImagetext extends StatelessWidget {
  const VerticalImagetext({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    this.isNetworkImage = true,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            CircularImage(
              image: image,
              fit: BoxFit.fitWidth,
              padding: TSizes.xs * 1,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              // overclayColor: HelperFunction.isDarkMode(context)
              //     ? AppColors.light
              //     : AppColors.dark,
            ),
            // Container(
            //   width: 55,
            //   height: 55,
            //   padding: const EdgeInsets.all(TSizes.sm),
            //   decoration: BoxDecoration(
            //     color: backgroundColor ??
            //         (dark ? AppColors.black : AppColors.white),
            //     borderRadius: BorderRadius.circular(100),
            //   ),
            //   child: Center(
            //     child: Image(
            //       image: AssetImage(image),
            //       fit: BoxFit.cover,
            //       color: dark ? AppColors.light : AppColors.dark,
            //     ),
            //   ),
            // ),
            const SizedBox(height: TSizes.spaceBtwItems / 3),
            SizedBox(
              width: 58,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
