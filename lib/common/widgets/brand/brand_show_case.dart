import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brand/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.sm),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(
            showBorder: false,
          ),
          Row(
            children: images
                .map(
                  (image) => brandTopProductionImagesWidget(image, context),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductionImagesWidget(String image, context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
