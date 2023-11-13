import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/circular_container.dart';
import 'package:t_store/common/widgets/rounded_container.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/utils/constants/helper_function.dart';
import 'package:t_store/utils/constants/images.dart';

import '../../../../../common/widgets/product_title.dart';
import '../../../../../common/widgets/text/t_brand_title_with_verifired_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        // padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
            color: dark ? TColors.darkerGrey : TColors.light,
            boxShadow: const [
              BoxShadow(
                  spreadRadius: 1, blurRadius: 5, color: TColors.darkerGrey)
            ],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              height: 180,
              // padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    height: 180,
                    imageUrl: TImages.iphone2,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    left: 5,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: dark
                              ? TColors.black.withOpacity(0.9)
                              : TColors.white.withOpacity(0.9)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.heart5,
                            color: Colors.red,
                          )),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Iphone 14 pro max'),
                  // SizedBox(height: TSizes.spaceBtwItems / 2),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: TBrandTitleText(
                title: 'Nike',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$125',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: dark ? TColors.light : TColors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                        )),
                    child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Icon(
                        Iconsax.add,
                        color: dark ? TColors.dark : TColors.light,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


