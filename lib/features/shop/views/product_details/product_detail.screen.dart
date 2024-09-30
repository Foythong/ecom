import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/product_detail.controller.dart';
import 'package:t_store/features/shop/views/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/views/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/views/product_details/widgets/product_image_slider.dart';
import 'package:t_store/features/shop/views/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/views/product_details/widgets/rating_and_share.dart';
import 'package:t_store/features/shop/views/product_reviews/product_review.screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetailScreen extends GetView<ProductDetailController> {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: TProductImageslider(),
            ),
            leading: AnimatedBuilder(
              animation: controller.scrollController,
              builder: (context, child) {
                return Transform.translate(
                  offset: const Offset(16, 0),
                  child: Opacity(
                    opacity: controller.scrollController.hasClients &&
                            controller.scrollController.offset > 1
                        ? 1.0
                        : 0.0,
                    child: CircularIcon(
                      icon: Iconsax.arrow_left,
                      backgroundColor: TColors.lightGrey,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const TRatingAndShare(),
                  const TProductMetaData(),
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                    title: 'Description',
                    showActionbutton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () {},
                        showActionbutton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(const ProductReviewScreen()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      )
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const TBottomAddToCart(),
    );
  }
}
