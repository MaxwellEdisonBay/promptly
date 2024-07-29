import 'package:flutter/material.dart';
import 'package:promptly/common/styles/spacing_styles.dart';
import 'package:promptly/common/widgets/form_divider.dart';
import 'package:promptly/common/widgets/social_buttons.dart';
import 'package:promptly/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.authOrSignInWith.toUpperCase()),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
