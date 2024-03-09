import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shopping_app/common/widgets_login_signup/form_divider.dart';
import 'package:shopping_app/common/widgets_login_signup/social_buttons.dart';
import 'package:shopping_app/features/authentication/screens/signup/widget/signup_from.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/constants/text_strings.dart';

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
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const TSignUpFrom(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
