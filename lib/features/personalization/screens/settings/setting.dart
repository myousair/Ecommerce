import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:minimart/common/widgets/listTile/settingmenutile.dart';
import 'package:minimart/common/widgets/listTile/userprofile_tile.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/authentication/screens/login/login.dart';
import 'package:minimart/features/personalization/screens/address/address.dart';
import 'package:minimart/features/personalization/screens/profile/profile.dart';
import 'package:minimart/features/personalization/screens/profile/widget/upload_data.dart';
import 'package:minimart/features/shop/screens/orders/order.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),
                  UserProfileTitle(
                      onPresssed: () => Get.to(
                            () => const ProfileScreen(),
                          )),
                  const SizedBox(height: TSizes.spaceBtwItems),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address ',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Order',
                    subtitle: 'In-progress and Completed Order',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List all of the discounted coupons',
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected account',
                    onTap: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    onTap: () => Get.to(() => const UploadDataScreen()),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Geoloaction',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Get.offAll(() => const LoginScreen()),
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
