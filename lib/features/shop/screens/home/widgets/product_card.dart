import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      // height: 200,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: TColors.white,
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 5,
                color: TColors.darkerGrey)
          ],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
      child: Column(
        children: [
          Stack(
            children: [
              /// Image , Sale Text, Favorite icon
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: TColors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.productImageRadius),
                  child: const Image(
                    image: AssetImage(TTexts.iphone1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              /// Sale text
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: TSizes.sm),
                margin: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm, vertical: TSizes.xs),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(TSizes.sm),
                    color: TColors.secondary.withOpacity(0.8)),
                child: const Text('25%'),
              ),

              /// Favorite icon
              Positioned(
                  top: TSizes.xs,
                  right: TSizes.sm,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(TSizes.xs),
                      decoration: BoxDecoration(
                          color: TColors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Iphone 14 PRO Max',
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),

                /// Brand Name
                Row(
                  children: [
                    Text(
                      'Iphone',
                      style: Theme.of(context).textTheme.labelMedium,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(width: TSizes.xs),
                    const Icon(
                      Iconsax.verify5,
                      color: TColors.primaryColor,
                      size: TSizes.iconXs,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          /// Price and Add Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Text(
                  '\$789',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.productImageRadius),
                        bottomRight: Radius.circular(
                            TSizes.productImageRadius))),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.add,
                      color: TColors.white,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
