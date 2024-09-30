import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_style.dart';
import 'package:t_store/features/authentication/index.dart';
import 'package:t_store/common/widgets/signin_signup/form_divider.dart';
import 'package:t_store/features/authentication/views/sign_in/widgets/login_form.dart';
import 'package:t_store/features/authentication/views/sign_in/widgets/login_header.dart';
import 'package:t_store/common/widgets/signin_signup/social_buttons.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //LOGO, title, subtitle
            const LoginHeader(),
            const LoginForm(),
            const SizedBox(height: TSizes.spaceBtwSections),
            //Divider
            FormDivider(
              dividerText: TTexts.orSignInWith.capitalize!,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //footer
            const SocialButtons(),
          ],
        ),
      )),
    );
  }
}
