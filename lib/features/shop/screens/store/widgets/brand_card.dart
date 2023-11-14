import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/images/t_circular_image.dart';
import '../../../../../common/widgets/rounded_container.dart';
import '../../../../../common/widgets/text/t_brand_title_with_verifired_icon.dart';
import '../../../../../utils/constants/sizes.dart';
class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
final bool showBorder;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            const TCircularImage(
              icon: Iconsax.airdrop,
            ),
            const SizedBox(
                height: TSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TBrandTitleText(title: 'Iphone'),
                  Text(
                    '256 products',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                    overflow: TextOverflow.ellipsis,
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