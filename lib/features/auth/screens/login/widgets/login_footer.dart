import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key, required this.inDarkMode});

  final bool inDarkMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(MySizes.sm),
            shape: CircleBorder(),
            backgroundColor: inDarkMode ? MyColors.black : MyColors.white,
            foregroundColor: inDarkMode ? MyColors.black : MyColors.white,
          ),
          onPressed: () {},
          child: Image(
            height: MySizes.lg,
            image: AssetImage(MyImages.tGoogleLogo),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(MySizes.sm),
            shape: CircleBorder(),
            backgroundColor: inDarkMode ? MyColors.black : MyColors.white,
            foregroundColor: inDarkMode ? MyColors.black : MyColors.white,
          ),
          onPressed: () {},
          child: Image(
            height: MySizes.lg,
            image: AssetImage(MyImages.tFacebookLogo),
          ),
        ),
      ],
    );
  }
}
