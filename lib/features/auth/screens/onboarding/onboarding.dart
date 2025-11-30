import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'on_boarding_content.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MyDeviceUtils.getAppBarHeight(),
            right: MySizes.defaultSpace,
            child: TextButton(
              onPressed: () {},
              child: Text("Skip", style: theme.textTheme.bodyMedium),
            ),
          ),
          PageView(
            children: [
              OnBoardingPageContent(
                onBoardingImage: MyImages.tOnBoardingImage1,
                onBoardingTitle: MyTexts.tOnBoardingTitle1,
                onBoardingSubTitle: MyTexts.tOnBoardingSubTitle1,
              ),
              OnBoardingPageContent(
                onBoardingImage: MyImages.tOnBoardingImage2,
                onBoardingTitle: MyTexts.tOnBoardingTitle2,
                onBoardingSubTitle: MyTexts.tOnBoardingSubTitle2,
              ),
              OnBoardingPageContent(
                onBoardingImage: MyImages.tOnBoardingImage3,
                onBoardingTitle: MyTexts.tOnBoardingTitle3,
                onBoardingSubTitle: MyTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
