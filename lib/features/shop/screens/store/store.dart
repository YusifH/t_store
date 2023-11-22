import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/circular_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/rounded_container.dart';
import 'package:t_store/common/widgets/search_container.dart';
import 'package:t_store/common/widgets/text/t_brand_title_with_verifired_icon.dart';
import 'package:t_store/features/shop/screens/home/widgets/cart_counter_icon.dart';
import 'package:t_store/features/shop/screens/store/widgets/brand_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/helper_function.dart';
import 'package:t_store/utils/constants/images.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brands_show_case.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/product_title.dart';
import '../../../../common/widgets/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'SHOP',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
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
                expandedHeight: 460,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.md),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Section
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections / 2,
                      ),

                      /// Featured Brands
                      TSectionHeader(
                        title: 'Featured brands',
                        showActionButton: true,
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Brands Grid
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard(
                              showBorder: true,
                            );
                          })
                    ],
                  ),
                ),

                /// Tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Clothes')),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brands
                    TBrandShowcase(
                      images: [
                        TImages.iphone1,
                        TImages.iphone2,
                        TImages.iphone3
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brands
                    TBrandShowcase(
                      images: [
                        TImages.onBoardingImage1,
                        TImages.onBoardingImage2,
                        TImages.onBoardingImage3
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brands
                    TBrandShowcase(
                      images: [
                        TImages.iphone1,
                        TImages.iphone2,
                        TImages.iphone3
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brands
                    TBrandShowcase(
                      images: [
                        TImages.iphone1,
                        TImages.iphone2,
                        TImages.iphone3
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brands
                    TBrandShowcase(
                      images: [
                        TImages.iphone1,
                        TImages.iphone2,
                        TImages.iphone3
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
