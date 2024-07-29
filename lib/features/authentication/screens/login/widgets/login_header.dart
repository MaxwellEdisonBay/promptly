import 'package:flutter/material.dart';
import 'package:promptly/utils/constants/image_strings.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/constants/text_strings.dart';
import 'package:promptly/utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
        ),
        Text(
          TTexts.authLoginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        )
      ],
    );
  }
}
