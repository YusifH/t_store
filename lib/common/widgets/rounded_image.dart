import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

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
    this.padding,
    this.backGroundColor = TColors.grey,
    this.fit = BoxFit.cover,
    this.margin,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final Color backGroundColor;
  final VoidCallback? onPressed;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: backGroundColor),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: AssetImage(imageUrl),
              fit: fit,
            )),
      ),
    );
  }
}
