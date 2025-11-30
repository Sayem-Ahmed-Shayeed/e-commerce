import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          SizedBox(height: MySizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: MyTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
        ],
      ),
    );
  }
}
