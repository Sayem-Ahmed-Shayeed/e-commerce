import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controller/onboarding_controller.dart';

class SmoothDotNavigation extends StatelessWidget {
  const SmoothDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnBoardingController.instance;
    final inDarkMode = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: onBoardingController.dotNavigatorOnClick,
        effect: WormEffect(
          activeDotColor: inDarkMode ? Colors.white : MyColors.secondary,
          dotColor: inDarkMode ? MyColors.darkerGrey : MyColors.grey,
          spacing: 10,
          type: WormType.thin,
        ),
        controller: onBoardingController.pageController,
        count: 3,
        axisDirection: Axis.horizontal,
      ),
    );
  }
}
