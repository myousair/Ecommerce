import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/image/rounded_image.dart';
import 'package:minimart/common/widgets/products/product_cart/productcart_horizontal.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports Shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const RoundImage(
                imageUrl: Timage.imagebanner2,
                applyImageRadius: true,
                width: double.infinity,
                height: null,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Column(
                children: [
                  SectionHeading(
                    title: 'Sports Shirt',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const ProductCartHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
