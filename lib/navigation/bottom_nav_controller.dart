import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  void selectScreen(int index) {
    selectedIndex.value = index;
  }

  Widget getSelectedScreen(List<Widget> screens) {
    return selectedIndex.value < screens.length
        ? screens[selectedIndex.value]
        : Container();
  }
}
