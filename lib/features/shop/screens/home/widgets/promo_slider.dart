import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: const [
            TRoundedImage(imageUrl: TTexts.banner1),
            TRoundedImage(imageUrl: TTexts.banner2,),
            TRoundedImage(imageUrl: TTexts.banner3),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primaryColor : TColors.grey,
                )
            ],
          ),
        )
      ],
    );
  }
}
