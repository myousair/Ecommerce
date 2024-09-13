import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/styles/spacing_letter.dart';
import 'package:minimart/common/widgets/login_signup/form_divider.dart';
import 'package:minimart/common/widgets/login_signup/social_button.dart';
import 'package:minimart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:minimart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/constants/text.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyle.paddingwithAppBarHeight,
        child: Column(
          children: [
            const LoginHeader(),
            //
            const LoginForm(),
            //
            FormDivider(
              dividerText: Texts.orSignInWith.capitalize!,
            ),
            //
            const SizedBox(height: TSizes.spaceBtwSections),
            //
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}
