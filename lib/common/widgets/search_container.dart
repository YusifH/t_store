import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: Border.all(color: TColors.grey),
            color: TColors.white),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: TColors.darkGrey,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('Search in Store',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}