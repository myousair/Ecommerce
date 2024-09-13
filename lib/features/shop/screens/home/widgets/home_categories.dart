import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/imageText/verticalimage_text.dart';
import 'package:minimart/common/widgets/shimmer/category_shimmer.dart';
import 'package:minimart/features/shop/controllers/category_controller.dart';
import 'package:minimart/features/shop/screens/sub_category/sub_categories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(() {
      if (categoryController.isLoading.value) return const CategoryShimmer();
      if (categoryController.featuredCategories.isEmpty) {
        return Center(
          child: Text(
            'No Data Found!',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: Colors.white),
          ),
        );
      }
      return SizedBox(
        height: 80,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 80),
          child: ListView.builder(
              itemCount: categoryController.featuredCategories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final category = categoryController.featuredCategories[index];
                return VerticalImagetext(
                  image: category.image,
                  title: category.name,
                  onTap: () => Get.to(
                    () => const SubCategoriesScreen(),
                  ),
                );
              }),
        ),
      );
    });
  }
}
