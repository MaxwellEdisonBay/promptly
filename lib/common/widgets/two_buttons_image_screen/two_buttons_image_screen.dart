import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class TwoButtonsImageScreen extends StatelessWidget {
  const TwoButtonsImageScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPrimary,
      required this.onSecondary});

  final String image, title, subTitle;
  final VoidCallback onPrimary, onSecondary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: THelperFunctions.screenWidth() * 0.6,
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Title & Subtitle
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        // const SizedBox(
        //   height: TSizes.spaceBtwItems,
        // ),
        // Text(
        //   "test.email@gmail.com",
        //   style: Theme.of(context).textTheme.labelLarge,
        //   textAlign: TextAlign.center,
        // ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPrimary,
            child: const Text(TTexts.verifyEmailContinueButton),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: onSecondary,
            child: const Text(TTexts.verifyEmailResendButton),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
