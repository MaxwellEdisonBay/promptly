import 'package:flutter/material.dart';
import 'package:promptly/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:promptly/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:promptly/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:promptly/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:promptly/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:promptly/utils/constants/image_strings.dart';
import 'package:promptly/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onboardingAllServicesAnimation,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onboardingCollaborativeAnimation,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onboardingShareAnimation,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const OnboardingSkip(),
          const OnboardingNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
