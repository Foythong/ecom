import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_Image_text.dart';
import 'package:t_store/features/shop/views/sub_category/sub_categories.screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          }),
    );
  }
}
