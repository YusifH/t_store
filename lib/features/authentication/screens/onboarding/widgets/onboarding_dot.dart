import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/helper_function.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        top: kBottomNavigationBarHeight,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          controller: controller.pageController,
          effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
        ));
  }
}
