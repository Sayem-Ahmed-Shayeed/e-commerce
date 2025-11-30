import 'package:ecommerce/common/widgets/default_padding.dart';
import 'package:ecommerce/features/auth/screens/signup/screens/success_page.dart';
import 'package:ecommerce/features/auth/screens/signup/widgets/return_button.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReturnButton(inDarkMode: inDarkMode, theme: theme),
                  ],
                ),
                Image(image: AssetImage(MyImages.deliveredEmailIllustration)),
                Text(
                  MyTexts.EmailVerificationTitle,
                  style: theme.textTheme.headlineMedium,
                ),

                SizedBox(height: MySizes.spaceBtwItems),
                Text("shayeedahmed2@gmail.com"),
                SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  MyTexts.EmailVerificationSubTitle,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: inDarkMode ? MyColors.darkGrey : Colors.grey,
                  ),
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
                SizedBox(height: MySizes.spaceBtwItems),
                SizedBox(
                  width: Get.width,
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: inDarkMode ? Colors.white : Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(MyTexts.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
