import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'circular_container.dart';
import 'curved_edges_widgets.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidgets(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                    backgroundColor: TColors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: TColors.white.withOpacity(0.1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}