import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width = double.infinity,
    this.height = 150,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.onPressed,
    this.borderRadius  = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}