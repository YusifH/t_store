import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/widgets/circular_container.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/helper_function.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.light),
      child: Column(
        children: [
          CircularContainer(
            height: 180,
            // padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkerGrey : TColors.light,
            child: Stack(
              children: [
                /// Image
                const TRoundedImage(
                  imageUrl: TTexts.iphone1,
                  // fit: BoxFit.cover,
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  left: 5,
                  child: CircularContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: const Text('25%'),
                  ),
                ),

                /// Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        size: TSizes.lg,
                        color: Colors.red,
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems /2),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                Text(
                  'Iphone 14 PRO Max',
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: TSizes.spaceBtwItems /2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
