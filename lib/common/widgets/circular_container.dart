import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.child,
    required this.backgroundColor,
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
