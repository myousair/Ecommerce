import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/login_signup/form_divider.dart';
import 'package:minimart/common/widgets/login_signup/social_button.dart';
import 'package:minimart/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/constants/text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Texts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              FormDivider(dividerText: Texts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
