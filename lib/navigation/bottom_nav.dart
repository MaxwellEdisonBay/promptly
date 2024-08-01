import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:promptly/features/create/screens/create/create.dart';
import 'package:promptly/features/dashboard/screens/home/home.dart';
import 'package:promptly/features/history/screens/history/history_screen.dart';
import 'package:promptly/features/profile/screens/profile/profile.dart';
import 'package:promptly/navigation/bottom_nav_controller.dart';
import 'package:promptly/utils/constants/colors.dart';
import 'package:promptly/utils/constants/text_strings.dart';
import 'package:promptly/utils/helpers/helper_functions.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  static List<Widget> screens = [
    const HomeScreen(),
    const CreateScreen(),
    const HistoryScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.selectScreen,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home), label: TTexts.bottomNavHome),
            NavigationDestination(
                icon: Icon(Iconsax.box_add), label: TTexts.bottomNavCreate),
            NavigationDestination(
                icon: Icon(Iconsax.book), label: TTexts.bottomNavHistory),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: TTexts.bottomNavProfile),
          ],
        ),
      ),
      body: Obx(
          () => controller.getSelectedScreen(screens)
      ),
    );
  }
}
