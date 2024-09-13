import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/features/shop/screens/product_detail/widgets/bottom_addtocart_widget.dart';
import 'package:minimart/features/shop/screens/product_detail/widgets/meta_data.dart';
import 'package:minimart/features/shop/screens/product_detail/widgets/product_attributtes.dart';
import 'package:minimart/features/shop/screens/product_detail/widgets/product_detail_imageSlider.dart';
import 'package:minimart/features/shop/screens/product_detail/widgets/rate_share.dart';
import 'package:minimart/features/shop/screens/product_review/product_review.dart';
import 'package:minimart/utils/constants/enums.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(
              product: product,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const RatingandShare(),
                  ProductMetaData(product: product),
                  if (product.productType == ProductType.variable.toString())
                    ProductAttributes(product: product),
                  if (product.productType == ProductType.variable.toString())
                    const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    product.description ?? '',
                    trimLines: 2,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Review (198)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                          icon: const Icon(Iconsax.arrow_right3,
                              size: 18, color: Colors.black),
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen())),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
