import 'package:ecommerce/features/auth/screens/onboarding/widgets/next_page_button.dart';
import 'package:ecommerce/features/auth/screens/onboarding/widgets/skip_button.dart';
import 'package:ecommerce/features/auth/screens/onboarding/widgets/smooth_dot_indicator.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controller/onboarding_controller.dart';
import '../widgets/on_boarding_content.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    //<-----Controllers------->
    OnBoardingController onBoardingController = Get.put(OnBoardingController());

    //<-------Normal Variables------>
    final theme = Theme.of(context);
    final inDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardingController.pageController,
            onPageChanged: onBoardingController.updatePageIndicator,
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
          SmoothDotNavigation(),
          NextPageButton(inDark: inDark, theme: theme),
          SkipButton(theme: theme),
        ],
      ),
    );
  }
}
