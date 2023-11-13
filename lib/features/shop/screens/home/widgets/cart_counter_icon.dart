import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helper_function.dart';
class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key, required this.onPressed, this.iconColor = TColors.white,
  });
  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? iconColor : TColors.black,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: dark ? TColors.black.withOpacity(0.5) : TColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                  '2',
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: TColors.white, fontSizeFactor: 0.8)
              ),
            ),
          ),
        )
      ],
    );
  }
}