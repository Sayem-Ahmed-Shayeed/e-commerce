import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignInWithGoogleDivider extends StatelessWidget {
  const SignInWithGoogleDivider({super.key, required this.inDarkMode});

  final bool inDarkMode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            endIndent: 5,
            color: inDarkMode ? MyColors.darkGrey : MyColors.grey,
          ),
        ),

        Text(MyTexts.SignInWithGoogle, style: theme.textTheme.labelMedium),
        Flexible(
          child: Divider(
            endIndent: 60,
            indent: 5,
            color: inDarkMode ? MyColors.darkGrey : MyColors.grey,
          ),
        ),
      ],
    );
  }
}
