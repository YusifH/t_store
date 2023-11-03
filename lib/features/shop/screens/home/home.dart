import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../common/widgets/circular_container.dart';
import '../../../../common/widgets/curved_edges_widgets.dart';
import '../../../../common/widgets/primary_header_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




