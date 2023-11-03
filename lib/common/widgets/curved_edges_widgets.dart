import 'package:flutter/material.dart';

import 'curved_edges.dart';
class TCurvedEdgeWidgets extends StatelessWidget {
  const TCurvedEdgeWidgets({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomCurvedEdges(),
        child: child
    );
  }
}