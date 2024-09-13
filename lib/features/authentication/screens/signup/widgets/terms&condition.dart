import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/features/authentication/controllers/signup/signup_controller.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/constants/text.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class TermsandConditionCheckBox extends StatelessWidget {
  const TermsandConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = HelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacypolicy.value,
              onChanged: (value) => controller.privacypolicy.value =
                  !controller.privacypolicy.value,
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: Texts.isAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${Texts.PrivacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AppColors.white : AppColors.Primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? AppColors.white : AppColors.Primary),
              ),
              TextSpan(
                text: Texts.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' ${Texts.termsOfUse}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AppColors.white : AppColors.Primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? AppColors.white : AppColors.Primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
