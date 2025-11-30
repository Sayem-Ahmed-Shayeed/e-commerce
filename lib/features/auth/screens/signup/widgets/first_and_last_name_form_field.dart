import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class FirstAndLastNameFormField extends StatelessWidget {
  const FirstAndLastNameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: MyTexts.firstName,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
        ),
        SizedBox(width: MySizes.md),
        Flexible(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: MyTexts.lastName,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
        ),
      ],
    );
  }
}
