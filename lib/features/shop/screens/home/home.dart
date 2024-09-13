import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:minimart/common/widgets/custom_shape/containers/seach_container.dart';
import 'package:minimart/common/widgets/layout/grid_layout.dart';
import 'package:minimart/common/widgets/products/product_cart/productcart_vertical.dart';
import 'package:minimart/common/widgets/shimmer/vertical_products_shimmer.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/shop/controllers/products/product_controller.dart';
import 'package:minimart/features/shop/screens/all_product/all_product.dart';
import 'package:minimart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:minimart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:minimart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Category',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SectionHeading(
                    title: 'Popular Product',
                    onPressed: () => Get.to(
                      () => AllProducts(
                        title: 'Popular Products',
                        futureMethod: controller.fetchAllFeaturedProducts(),
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Obx(() {
                    if (controller.isLoading.value)
                      return VerticalProductsShimmer();

                    if (controller.featuredProducts.isEmpty) {
                      return Center(
                        child: Text(
                          'No Data Found!',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      );
                    }
                    return GridLayout(
                      itemCount: controller.featuredProducts.length,
                      itemBuilder: (context, index) => ProductCartVertical(
                        product: controller.featuredProducts[index],
                      ),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
