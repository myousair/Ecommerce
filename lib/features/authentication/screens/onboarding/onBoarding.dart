import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:minimart/features/authentication/screens/onboarding/widgets/onboarding_naviagation.dart';
import 'package:minimart/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:minimart/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:minimart/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/constants/text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: Timage.onBoarding1,
                title: Texts.onBoardingTitle1,
                text: Texts.onBoardingText1,
              ),
              OnBoardingPage(
                image: Timage.onBoarding2,
                title: Texts.onBoardingTitle2,
                text: Texts.onBoardingText2,
              ),
              OnBoardingPage(
                image: Timage.onBoarding3,
                title: Texts.onBoardingTitle2,
                text: Texts.onBoardingText2,
              ),
            ],
          ),
          const OnBoardingSkip(),

          //

          const OnBoardingDotNavigation(),

          //

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
