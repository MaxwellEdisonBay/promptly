import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promptly/common/widgets/success_screen/success_screen.dart';
import 'package:promptly/common/widgets/two_buttons_image_screen/two_buttons_image_screen.dart';
import 'package:promptly/features/authentication/screens/login/login.dart';
import 'package:promptly/utils/constants/image_strings.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: TwoButtonsImageScreen(
              title: TTexts.verifyEmailTitle,
              subTitle: TTexts.verifyEmailBody,
              image: TImages.verifyEmailImage,
              onPrimary: () => Get.to(
                () => SuccessScreen(
                  image: TImages.verifyEmailImage,
                  title: TTexts.accountCreatedTitle,
                  subTitle: TTexts.accountCreatedSubtitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ),
              ),
              onSecondary: () {},
            )),
      ),
    );
  }
}
