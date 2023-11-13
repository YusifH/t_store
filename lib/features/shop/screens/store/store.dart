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

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/product_title.dart';
import '../../../../common/widgets/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.sm),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Section
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const TSearchContainer(
                      text: '',
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// Featured Brands
                    TSectionHeader(
                      title: 'Featured brands',
                      showActionButton: true,
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: RoundedContainer(
                              padding: const EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  /// Icon
                                  const TCircularImage(
                                    icon: Iconsax.airdrop,
                                  ),
                                  const SizedBox(
                                      height: TSizes.spaceBtwItems / 2),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const TBrandTitleText(title: 'Nike'),
                                        Text(
                                          '256 productsproductsproducts',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
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
