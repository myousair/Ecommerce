import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/features/shop/screens/cart/widgets/cartitem.dart';
import 'package:minimart/features/shop/screens/checkout/checkout.dart';
import 'package:minimart/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => const CheckoutScreen(),
          ),
          child: const Text('Checkout Rs650.0'),
        ),
      ),
    );
  }
}
