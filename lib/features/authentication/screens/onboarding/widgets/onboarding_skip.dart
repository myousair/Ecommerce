import 'package:flutter/material.dart';
import 'package:minimart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/devices/device_utility.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
