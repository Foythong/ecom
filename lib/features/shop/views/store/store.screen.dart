import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabber.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/store.controller.dart';
import 'package:t_store/common/widgets/brand/brand_card.dart';
import 'package:t_store/features/shop/views/all_brands/all_brands.screen.dart';
import 'package:t_store/features/shop/views/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends GetView<StoreController> {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: controller.tabs.length,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TColors.white : TColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        TSectionHeading(
                          title: 'Feature Brands',
                          onPressed: () =>
                              Get.to(() => const AllBrandsScreen()),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        GridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return const BrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: TTabBar(
                    tabs: controller.tabs,
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: List.generate(controller.tabs.length, (index) {
                return const TCategoryTab();
              }),
            )),
      ),
    );
  }
}
