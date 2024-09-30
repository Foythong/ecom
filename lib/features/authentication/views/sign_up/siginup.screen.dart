import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/signin_signup/form_divider.dart';
import 'package:t_store/common/widgets/signin_signup/social_buttons.dart';
import 'package:t_store/features/authentication/views/sign_up/verifyemail.screen.dart';
import 'package:t_store/features/authentication/views/sign_up/widgets/siginup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
              const SignUpForm(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(const VerifyEmailScreen()),
                  child: const Text(TTexts.createAccount),
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              FormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
