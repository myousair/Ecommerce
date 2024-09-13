import 'package:flutter/material.dart';
import 'package:minimart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/devices/device_utility.dart';
import 'package:minimart/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunction.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNaviagtionClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? AppColors.light : AppColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
