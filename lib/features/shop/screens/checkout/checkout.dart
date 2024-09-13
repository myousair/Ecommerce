import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/custom_shape/containers/rounded.dart';
import 'package:minimart/common/widgets/products/cart/cupon_widget.dart';
import 'package:minimart/common/widgets/success_screen/success.dart';
import 'package:minimart/features/shop/screens/cart/widgets/cartitem.dart';
import 'package:minimart/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:minimart/features/shop/screens/checkout/widgets/billing_payments_section.dart';
import 'package:minimart/navigation_menu.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(showaddremovebutton: false),
              const SizedBox(height: TSizes.spaceBtwSections),
              const CuponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              images: Timage.successfulpaymet,
              title: 'Payment Success!',
              subtitle: 'Your item will shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout Rs650.0'),
        ),
      ),
    );
  }
}
