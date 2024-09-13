import 'package:flutter/cupertino.dart';
import 'package:minimart/common/widgets/products/cart/add_remove_button.dart';
import 'package:minimart/common/widgets/products/cart/cart_item.dart';
import 'package:minimart/common/widgets/products/product_cart/product_pricetext.dart';
import 'package:minimart/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showaddremovebutton = true});

  final bool showaddremovebutton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 10,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showaddremovebutton) const SizedBox(height: TSizes.spaceBtwItems),
          if (showaddremovebutton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 60),
                    ProductQuantityaddremove(),
                  ],
                ),
                ProductPriceText(price: '750')
              ],
            ),
        ],
      ),
    );
  }
}
