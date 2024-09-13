import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/listTile/loaddata_tile.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/features/shop/controllers/banner_contoller.dart';
import 'package:minimart/features/shop/controllers/category_controller.dart';
import 'package:minimart/features/shop/models/category_model.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';

class UploadDataScreen extends StatelessWidget {
  const UploadDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerController = Get.put(BannerController());
    final categoryController = Get.put(CategoryController());
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text('Upload Data',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeading(
                title: 'Main Record',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Categories',
                onTap: () {},
              ),
              const UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Brands',
              ),
              const UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Products',
              ),
               UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Banners',
                onTap: () async {
                  await bannerController.uploadBanners();
                },
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(
                title: 'RelationShips',
                showActionButton: false,
              ),
              Text(
                'Make sure you have already uploaded all the content above',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: AppColors.textColor),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Brands & Categories Relation Data',
              ),
              const UploadDataTile(
                icon: Icons.upload_file,
                title: 'Upload Products Categories Relation Data',
              ),
            ],
          ),
        ));
  }
}
