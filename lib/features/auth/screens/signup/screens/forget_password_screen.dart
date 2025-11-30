import 'package:ecommerce/common/widgets/default_padding.dart';
import 'package:ecommerce/features/auth/screens/signup/screens/password_reset_email_sent_screen.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../login/screens/login_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySizes.spaceBtwSections),
              Text(
                MyTexts.tForgetPasswordTitle,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.tForgetPasswordSubTitle,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: MySizes.spaceBtwSections * 2),
              TextFormField(
                decoration: InputDecoration(
                  labelText: MyTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => PasswordResetEmailSentScreen()),
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
