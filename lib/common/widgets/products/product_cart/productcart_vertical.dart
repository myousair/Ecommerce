import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/styles/shadow.dart';
import 'package:minimart/common/widgets/custom_shape/containers/rounded.dart';
import 'package:minimart/common/widgets/icon/circularIcon.dart';
import 'package:minimart/common/widgets/image/rounded_image.dart';
import 'package:minimart/common/widgets/products/product_cart/product_pricetext.dart';
import 'package:minimart/common/widgets/texts/brandtitleVerifyicon.dart';
import 'package:minimart/common/widgets/texts/product_title.dart';
import 'package:minimart/features/shop/controllers/products/product_controller.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/features/shop/screens/product_detail/product_detail.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/enums.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class ProductCartVertical extends StatelessWidget {
  const ProductCartVertical({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage =
        controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(
        () => ProductDetail(product: product),
      ),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? AppColors.darkergrey : AppColors.white),
        child: Column(
          children: [
            RoundedContainer(
              height: 161.3,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  Center(
                    child: RoundImage(
                      imageUrl: product.thumbnail,
                      applyImageRadius: true,
                      isNetworkImage: true,
                    ),
                  ),
                  Positioned(
                    top: 2,
                    child: RoundedContainer(
                      radius: TSizes.xs,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.xs, vertical: TSizes.xs),
                      child: Text(
                        '$salePercentage%',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: AppColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitle(
                    title: product.title,
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  BrandTitleWithVerification(title: product.brand!.name),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      if (product.productType ==
                              ProductType.single.toString() &&
                          product.salePrice > 0)
                        Padding(
                            padding: const EdgeInsets.only(left: TSizes.sm),
                            child: Text(
                              product.price.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
                            )),
                      Padding(
                        padding: const EdgeInsets.only(left: TSizes.xs),
                        child: ProductPriceText(
                            price: controller.getProductPrice(product)),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: AppColors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
