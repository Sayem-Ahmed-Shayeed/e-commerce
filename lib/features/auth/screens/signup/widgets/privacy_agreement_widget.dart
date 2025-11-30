import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class PrivacyAgreementTextWidget extends StatelessWidget {
  const PrivacyAgreementTextWidget({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MySizes.lg,
          width: MySizes.lg,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: MySizes.spaceBtwItems),
        Text(MyTexts.agreement, style: theme.textTheme.bodyMedium),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Privacy Policy",
            style: theme.textTheme.bodyMedium?.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Text(
          " and ",
          style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Terms of use",
            style: theme.textTheme.bodyMedium?.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
