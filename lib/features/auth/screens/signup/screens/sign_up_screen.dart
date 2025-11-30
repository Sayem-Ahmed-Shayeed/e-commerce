import 'package:ecommerce/common/widgets/default_padding.dart';
import 'package:ecommerce/features/auth/screens/signup/screens/verify_email_screen.dart';
import 'package:ecommerce/features/auth/screens/signup/widgets/first_and_last_name_form_field.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../login/widgets/login_footer.dart';
import '../../login/widgets/sing_in_with_google_divider.dart';
import '../widgets/privacy_agreement_widget.dart';
import '../widgets/return_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding.copyWith(top: MySizes.appBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReturnButton(inDarkMode: inDarkMode, theme: theme),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(
                MyTexts.signupScreenTitle,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwSections / 2),
              //Form
              Form(
                child: Column(
                  children: [
                    //First name and last name
                    FirstAndLastNameFormField(),

                    SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: MyTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: MyTexts.email,
                        prefixIcon: Icon(Iconsax.direct_right),
                      ),
                    ),
                    SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: MyTexts.phone,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: MyTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                      ),
                    ),
                    SizedBox(height: MySizes.spaceBtwInputFields),
                    PrivacyAgreementTextWidget(theme: theme),
                    SizedBox(height: MySizes.spaceBtwSections),
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: inDarkMode
                              ? MyColors.black
                              : MyColors.black,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(() => VerifyEmailScreen());
                        },
                        child: Text(MyTexts.createAccount),
                      ),
                    ),
                    SizedBox(height: MySizes.spaceBtwSections / 2),
                    //Divider
                    SignInWithGoogleDivider(inDarkMode: inDarkMode),
                    SizedBox(height: MySizes.spaceBtwSections / 1),
                    LoginFooter(inDarkMode: inDarkMode),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
