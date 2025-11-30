import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class OnBoardingPageContent extends StatelessWidget {
  const OnBoardingPageContent({
    super.key,
    required this.onBoardingTitle,
    required this.onBoardingSubTitle,
    required this.onBoardingImage,
  });

  final String onBoardingTitle;
  final String onBoardingSubTitle;
  final String onBoardingImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(onBoardingImage),
            height: Get.height * 0.6,
            width: Get.width * 0.8,
          ),
          Text(
            onBoardingTitle,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MySizes.spaceBtwItems),
          Text(
            onBoardingSubTitle,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
