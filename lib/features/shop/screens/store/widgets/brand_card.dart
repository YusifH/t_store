import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding:  const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        child: Expanded(
          child: Row(
            children: [
              const SizedBox(
                width: 40,
                child: Image(
                  image: AssetImage(TTexts.iphone1),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems / 1.5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Expanded(
                      child: Row(
                        children: [
                          Text('IPHONE'),
                          Icon(
                            Iconsax.verify5,
                            color: TColors.primaryColor,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '152 Product',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
