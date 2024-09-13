import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/brands/brandshowcase.dart';
import 'package:minimart/common/widgets/layout/grid_layout.dart';
import 'package:minimart/common/widgets/products/product_cart/productcart_vertical.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/shop/models/category_model.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const BrandShowcase(
                  images: [
                    Timage.imageProduct2,
                    Timage.imageProduct3,
                    Timage.imageProduct4
                  ],
                ),
                const BrandShowcase(
                  images: [
                    Timage.imageProduct2,
                    Timage.imageProduct3,
                    Timage.imageProduct4
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SectionHeading(
                  title: 'You Might Like',
                  onPressed: () {},
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) =>  ProductCartVertical(product: ProductModel.empty()),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
