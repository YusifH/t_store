import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../utils/constants/colors.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.margin,
    this.child,
    this.backgroundColor = TColors.white,
    this.showBorder = false,
    this.padding,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
