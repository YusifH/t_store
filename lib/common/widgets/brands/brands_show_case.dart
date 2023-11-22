import 'package:flutter/material.dart';

import '../../../features/shop/screens/store/widgets/brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../rounded_container.dart';
Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: RoundedContainer(
      height: 100,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(image: AssetImage(image), fit: BoxFit.cover,),
    ),
  );
}

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const TBrandCard(showBorder: false),
          /// Brand top 3 Product
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }
}