import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promptly/common/widgets/two_buttons_image_screen/two_buttons_image_screen.dart';
import 'package:promptly/utils/constants/image_strings.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/constants/text_strings.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: TwoButtonsImageScreen(
                image: TImages.verifyEmailImage,
                title: TTexts.passwordResetTitle,
                subTitle: TTexts.passwordResetSubtitle,
                onPrimary: () {},
                onSecondary: () {})),
      ),
    );
  }
}
