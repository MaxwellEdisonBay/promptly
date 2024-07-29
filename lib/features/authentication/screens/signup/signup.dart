import 'package:flutter/material.dart';
import 'package:promptly/common/widgets/form_divider.dart';
import 'package:promptly/common/widgets/social_buttons.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/constants/text_strings.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title
            Text(
              TTexts.authSignupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Form
            const TSignUpForm(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Divider
            const TFormDivider(dividerText: TTexts.authSignupOrSignUpWith),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Social Buttons
            const TSocialButtons(),
          ],
        ),
      ),
    );
  }
}
