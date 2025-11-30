import 'package:ecommerce/common/widgets/default_padding.dart';
import 'package:ecommerce/features/auth/screens/login/screens/login_screen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordResetEmailSentScreen extends StatelessWidget {
  const PasswordResetEmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                MyTexts.passwordResetEmailSentTitle,
                style: theme.textTheme.headlineMedium,
              ),

              SizedBox(height: MySizes.spaceBtwItems),
              Text('shayeedahmed2@gmail.com'),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.passwordResetEmailSentSubTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: inDarkMode ? MyColors.darkGrey : Colors.grey,
                ),
              ),

              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: inDarkMode
                        ? MyColors.black
                        : MyColors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Get.offAll(() => LoginScreen());
                  },
                  child: Text(MyTexts.done),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: theme.colorScheme.onSurface,
                ),
                onPressed: () {},
                child: Text(MyTexts.resendEmail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
