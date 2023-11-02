import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text.dart';

import '../../../../utils/constants/sizes.dart';
import '../login/widgets/login_footer.dart';
import '../login/widgets/login_social_buttons.dart';

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
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              Form(
                  child: Column(
                children: [
                  /// Firstname and LastName
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TTexts.firstName),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TTexts.lastName),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  /// Username
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: TTexts.username),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  /// Email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: TTexts.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  /// Phone Number
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.call),
                        labelText: TTexts.phoneNo),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  /// Phone Number
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: TTexts.phoneNo),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// TermsConditions Checkbox
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '${TTexts.iAgreeTo} ',
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                                text: ' ${TTexts.privacyPolicy} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: TColors.primaryColor,
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: ' and ',
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                                text: '${TTexts.termsOfUse} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: TColors.primaryColor,
                                        decoration: TextDecoration.underline)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  /// Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(const HomePage()), child: const Text('Sign Up')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  /// Divider
                  const LoginFooter(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  /// Social buttons
                  const LoginSocialButtons()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
