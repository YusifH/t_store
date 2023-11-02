import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../../utils/constants/helper_function.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';
import '../login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: TTexts.password),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () {},
                    child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }, child: const Text(TTexts.signIn)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Text(TTexts.createAccount, style: TextStyle(color: dark ? TColors.white : TColors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}
