import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: TTexts.authSignupTCPart1,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: TTexts.authSignupTCPart2,
            style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: dark ? Colors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : TColors.primary,
                ),
          ),
          TextSpan(
            text: TTexts.authSignupTCPart3,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: TTexts.authSignupTCPart4,
            style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: dark ? Colors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Colors.white : TColors.primary,
                ),
          ),
        ]))
      ],
    );
  }
}
