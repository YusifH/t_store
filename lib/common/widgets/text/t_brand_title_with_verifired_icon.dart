import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../product_title.dart';
class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primaryColor,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TProductTitleText(
          title: title,
          maxLines: 1,
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: TColors.primaryColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}