import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.child,
    required this.backgroundColor,
    this.padding,
  });

  final double? width;
  final double? height;
  final double? radius;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
