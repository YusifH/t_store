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
  });

  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              spreadRadius: 1,
              blurRadius: 5,
              color: TColors.darkerGrey)
        ],
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}