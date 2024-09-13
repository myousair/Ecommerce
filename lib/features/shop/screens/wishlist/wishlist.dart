import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/icon/circularIcon.dart';
import 'package:minimart/common/widgets/layout/grid_layout.dart';
import 'package:minimart/common/widgets/products/product_cart/productcart_vertical.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/features/shop/screens/home/home.dart';
import 'package:minimart/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              const HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) =>  ProductCartVertical(product: ProductModel.empty()),)
            ],
          ),
        ),
      ),
    );
  }
}
