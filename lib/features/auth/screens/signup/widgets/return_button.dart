import 'package:ecommerce/features/auth/screens/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({
    super.key,
    required this.inDarkMode,
    required this.theme,
  });

  final bool inDarkMode;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySizes.xl,
      width: MySizes.xl,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: inDarkMode
              ? MyColors.black
              : theme.colorScheme.primary,
          foregroundColor: inDarkMode
              ? MyColors.white
              : theme.colorScheme.onPrimary,
          padding: EdgeInsets.all(0),
          shape: CircleBorder(),
        ),
        onPressed: () {
          Get.offAll(() => LoginScreen());
        },
        child: Icon(Iconsax.arrow_left),
      ),
    );
  }
}
