import 'package:ecommerce/features/auth/screens/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final PageController pageController = PageController();

  final currentPageIndex = 0.obs;

  void updatePageIndicator(value) {
    currentPageIndex.value = value;
  }

  void dotNavigatorOnClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(microseconds: 1000),
      curve: Curves.easeInCirc,
    );
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
