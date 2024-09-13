import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.actionText,
      this.showAction = false,
      this.onActionPressed});

  final String text;
  final String animation;
  final String? actionText;
  final bool showAction;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: TSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                      onPressed: onActionPressed,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.dark),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: AppColors.light),
                      )),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
