import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/views/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      imageUul: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              //detail
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionbutton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ProfileMenu(
                title: 'Name',
                value: 'coding_with_t',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Username',
                value: 'coding_with_t',
                onTap: () {},
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              const TSectionHeading(
                title: 'Personal Information',
                showActionbutton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ProfileMenu(
                title: 'User ID',
                value: '45689',
                onTap: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                title: 'E-mail',
                value: 'coding_with_t',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '+63-889-3904',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: 'Male',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Date of Birth',
                value: '10 Oct, 1994',
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
