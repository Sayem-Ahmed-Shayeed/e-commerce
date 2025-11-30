import 'package:ecommerce/common/widgets/default_padding.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                // height: MySizes.sm,
                MyImages.successfullyRegisterAnimation,
              ),
              Text(
                MyTexts.yourAccountCreatedTitle,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.yourAccountCreatedSubTitle,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: inDarkMode
                        ? MyColors.black
                        : MyColors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Get.to(() => SuccessPage());
                  },
                  child: Text(MyTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
