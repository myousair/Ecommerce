import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/devices/device_utility.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AppColors.Primary : AppColors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
