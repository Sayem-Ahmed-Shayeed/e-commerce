import 'package:ecommerce/features/auth/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key, required this.inDark, required this.theme});

  final bool inDark;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      right: MySizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          return OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: inDark ? Colors.white : MyColors.primary,
            width: 0.5,
          ),
          shape: CircleBorder(eccentricity: 0.6),
          backgroundColor: inDark ? Colors.white : MyColors.primary,
        ),
        child: Icon(
          fontWeight: FontWeight.w900,
          Iconsax.arrow_right_3,
          color: theme.colorScheme.onSecondary,
        ),
      ),
    );
  }
}
