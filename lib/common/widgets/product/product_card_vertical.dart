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
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkerGrey : TColors.light,
            child: Stack(
              children: [
                /// Image
                const TRoundedImage(
                  imageUrl: TTexts.iphone1,
                  borderRadius: 25,
                  fit: BoxFit.contain,
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  // left: 12,
                  child: CircularContainer(
                    radius: TSizes.sm,
                    width: 40,
                    height: 20,
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    child: Center(child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),)),
                  ),
                ),
                /// Favorite Icon Button
                Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9)
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.heart5, color: Colors.red,)),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
