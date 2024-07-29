import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:promptly/features/authentication/screens/signup/widgets/signup_terms_and_conditions_checkbox.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            /// First Name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.authSignupFirstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),

            /// Last Name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.authSignupLastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.authSignupUsername,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.authEmail, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Phone Number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.authSignupPhoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.authPassword,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Terms & Conditions Checkbox
        const TTermsAndConditionsCheckbox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(TTexts.authSignUp),
          ),
        )
      ],
    ));
  }
}
