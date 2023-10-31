import 'package:flutter/material.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Pages
            PageView(
              children: [
                  Column(
                    children: [

                    ],
                  )
              ],
            )

          /// Skip Button


          /// Dot Navigation SmoothPageIndicator



          /// Circular Button



        ],
      ),
    );
  }
}
