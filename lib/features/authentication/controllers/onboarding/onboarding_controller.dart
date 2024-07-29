import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:promptly/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when page scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      // pageController.animateToPage(currentPageIndex.value + 1,
      //     duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  /// Update Current Index & jump to the last page
  void skipPage() {
    // TODO: Remove hardcoded page numbers
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
