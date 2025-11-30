import 'package:ecommerce/features/auth/screens/signup/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SignInAndSignUpButton extends StatelessWidget {
  const SignInAndSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: inDarkMode ? MyColors.white : MyColors.black,
              foregroundColor: inDarkMode ? MyColors.black : MyColors.white,
            ),
            onPressed: () {},
            child: Text(MyTexts.Login),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwSections / 2),
        SizedBox(
          width: Get.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: inDarkMode ? MyColors.black : MyColors.white,
              foregroundColor: inDarkMode ? MyColors.white : MyColors.black,
            ),
            onPressed: () {
              Get.to(() => SignUpScreen());
            },
            child: Text(MyTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
