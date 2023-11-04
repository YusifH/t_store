import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
class TSectionHeader extends StatelessWidget {
  const TSectionHeader({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwSections),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(onPressed: onPressed, child: Text(buttonTitle))
        ],
      ),
    );
  }
}