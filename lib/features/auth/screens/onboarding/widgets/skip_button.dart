import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controller/onboarding_controller.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      top: MyDeviceUtils.getAppBarHeight(),
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
        },
        child: Text(
          "Skip",
          style: theme.textTheme.bodyMedium?.copyWith(letterSpacing: 2),
        ),
      ),
    );
  }
}
