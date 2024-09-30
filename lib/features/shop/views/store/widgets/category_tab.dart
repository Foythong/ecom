import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brand/brand_show_case.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: ListView(
        shrinkWrap: true,
        children: [
          const TBrandShowCase(
            images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],
          ),
          TSectionHeading(
            title: 'You might like',
            onPressed: () {},
            showActionbutton: true,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
          GridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const TProductCardVertical(),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
        ],
      ),
    );
  }
}
