import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/circular_container.dart';
import 'package:t_store/common/widgets/search_container.dart';
import 'package:t_store/features/shop/screens/home/widgets/cart_counter_icon.dart';
import 'package:t_store/features/shop/screens/store/widgets/brand_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/helper_function.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text.dart';

import '../../../../common/widgets/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text('Shops'),
        action: [
          CartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                        text: '', showBorder: true, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Featured Brands
                    const TSectionHeader(
                        showActionButton: true,
                        padding: EdgeInsets.zero,
                        title: 'Featured Brands',
                        textColor: TColors.primaryColor),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    GridView.builder(
                      itemCount: 4,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: TSizes.gridViewSpacing,
                        crossAxisSpacing: TSizes.gridViewSpacing,
                        mainAxisExtent: 80,
                      ),
                      itemBuilder: (_, index) => const BrandCard(),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
