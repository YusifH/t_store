import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/helper_function.dart';
import '../../../utils/constants/sizes.dart';
class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 56,
        height: 56,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
            color: THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white,
            borderRadius: BorderRadius.circular(100)),
        child: Icon(icon)
    );
  }
}