import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_social_buttons.dart';
import 'package:t_store/utils/constants/helper_function.dart';
import 'package:t_store/utils/constants/images.dart';
import 'package:t_store/utils/constants/text.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
          ),
          child: Column(
            children: <Widget>[
              /// Logo Title SubTitle
              LoginHeader(),
              /// Form
              LoginForm(),
              /// Divider
              LoginFooter(),
              SizedBox(height: TSizes.spaceBtwSections,),
              /// Social buttons
              LoginSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
