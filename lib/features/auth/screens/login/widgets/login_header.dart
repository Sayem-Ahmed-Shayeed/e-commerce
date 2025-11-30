import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key, required this.inDarkMode, required this.theme});

  final bool inDarkMode;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: Get.height * 0.2,
          width: Get.width * 0.3,
          image: AssetImage(
            inDarkMode ? MyImages.lightAppLogo : MyImages.darkAppLogo,
          ),
        ),
        Text(MyTexts.LoginTitle, style: theme.textTheme.headlineMedium),
        SizedBox(height: MySizes.sm),
        Text(MyTexts.LoginSubTitle, style: theme.textTheme.bodyMedium),
        SizedBox(height: MySizes.spaceBtwSections),
      ],
    );
  }
}
