import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/default_padding.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../widgets/remember_me_and_forget_pass.dart';
import '../widgets/sign_in_and_sign_up_button.dart';
import '../widgets/sing_in_with_google_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inDarkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              LoginHeader(inDarkMode: inDarkMode, theme: theme),
              //Form
              LoginForm(),

              SizedBox(height: MySizes.spaceBtwItems / 2),

              //Remember Me & Forget Password
              RememberMeAndForgetPass(theme: theme),

              SizedBox(height: MySizes.spaceBtwSections),

              //Login and create account button
              SignInAndSignUpButton(),
              SizedBox(height: MySizes.spaceBtwSections / 2),
              //Divider
              SignInWithGoogleDivider(inDarkMode: inDarkMode),
              SizedBox(height: MySizes.spaceBtwSections / 1),
              LoginFooter(inDarkMode: inDarkMode),
            ],
          ),
        ),
      ),
    );
  }
}
