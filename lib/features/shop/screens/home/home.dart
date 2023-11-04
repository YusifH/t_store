import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text.dart';
import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/search_container.dart';
import '../../../../common/widgets/section_heading.dart';
import '../../../../common/widgets/vertical_image_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar Section
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.md),

                  /// SearchBar Section
                  const TSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories Section
                  Column(
                    children: [
                      /// Heading
                      const TSectionHeader(
                          title: 'Popular Categories',
                          textColor: TColors.white),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Categories
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(
                              left: TSizes.spaceBtwSections),
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return TVerticalImageText(
                              image: TTexts.chairIcon,
                              title: 'Chairs',
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


