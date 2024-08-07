import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:promptly/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:promptly/features/authentication/screens/signup/signup.dart';
import 'package:promptly/navigation/bottom_nav.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.authEmail),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TTexts.authPassword),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          /// Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.authRememberMe)
                ],
              ),

              /// Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.authForgetPassword))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const BottomNav()), child: const Text(TTexts.authSignIn)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Create Account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(TTexts.authSignUp)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    ));
  }
}
