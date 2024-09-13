import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/custom_shape/curved_edge/curvedEdge_widgets.dart';
import 'package:minimart/common/widgets/icon/circularIcon.dart';
import 'package:minimart/common/widgets/image/rounded_image.dart';
import 'package:minimart/features/shop/controllers/products/images_controller.dart';
import 'package:minimart/features/shop/models/product_model.dart';

import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    final controller = Get.put(ImagesController());
    final images = controller.getAllProductImages(product);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkergrey : AppColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Obx(() {
                    final image = controller.selectedProductImage.value;
                    return GestureDetector(
                      onTap: ()=> controller.showEnlargedImage(image),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        progressIndicatorBuilder: (_, __, downloadProgress) =>
                            CircularProgressIndicator(
                          value: downloadProgress.progress,
                          color: AppColors.Primary,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => Obx(() {
                    final imageSelected =
                        controller.selectedProductImage.value == images[index];
                    return RoundImage(
                      width: 70,
                      isNetworkImage: true,
                      background: dark ? AppColors.dark : AppColors.white,
                      border: Border.all(
                          color: imageSelected
                              ? AppColors.Primary
                              : Colors.transparent),
                      padding: const EdgeInsets.all(TSizes.sm),
                      onPressed: () =>
                          controller.selectedProductImage.value = images[index],
                      imageUrl: images[index],
                    );
                  }),
                ),
              ),
            ),
            const TAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
