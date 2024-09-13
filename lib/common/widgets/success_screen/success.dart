import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimart/common/styles/spacing_letter.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/constants/text.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.images,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String images, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingwithAppBarHeight * 2,
          child: Column(
            children: [
              Lottie.asset(images,
                  width: MediaQuery.of(context).size.width * 0.6),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(Texts.continues),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
