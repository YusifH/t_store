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
    this.borderRadius = TSizes.md,
    this.fit = BoxFit.cover, this.padding,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final VoidCallback? onPressed;
  final double borderRadius;
  final BoxFit? fit;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image(
              image: AssetImage(imageUrl),
              fit: fit,
            )),
      ),
    );
  }
}
