import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignInAndSignUpButton extends StatelessWidget {
  const SignInAndSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.secondary,
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
              backgroundColor: MyColors.secondary,
            ),
            onPressed: () {},
            child: Text(MyTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
