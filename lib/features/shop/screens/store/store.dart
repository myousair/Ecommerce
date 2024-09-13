import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/appbar/tabbar.dart';
import 'package:minimart/common/widgets/brands/brandcard.dart';
import 'package:minimart/common/widgets/custom_shape/containers/seach_container.dart';
import 'package:minimart/common/widgets/layout/grid_layout.dart';
import 'package:minimart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/shop/controllers/category_controller.dart';
import 'package:minimart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    final dark = HelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('MiniBazaar'),
          actions: [
            CartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxisScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      SectionHeading(
                        title: 'Featured Product',
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      GridLayout(
                          mainAxisExtent: 70,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const BrandCard(
                              showBorder: true,
                            );
                          }),
                    ],
                  ),
                ),
                bottom: Ttabbar(
                  tabs: categories
                      .map(
                        (category) => Tab(child: Text(category.name)),
                      )
                      .toList(),
                ),
              ),
            ];
          },
          body: TabBarView(
              children: categories
                  .map((category) => CategoryTab(
                        category: category,
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
