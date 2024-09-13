import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/image/circular_image.dart';
import 'package:minimart/features/personalization/controllers/user_controller.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/image_string.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key,
    required this.onPresssed,
  });

  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Obx(() => ListTile(
          leading: controller.user.value.profilePicture.isNotEmpty
              ? CircularImage(
                  image: controller.user.value.profilePicture,
                  height: 45,
                  width: 45,
                  padding: 0,
                  isNetworkImage:
                      true, // Ensure CircularImage supports network images
                )
              : const CircularImage(
                  image: Timage.user,
                  height: 45,
                  width: 45,
                  padding: 0,
                ),
          title: Text(
            controller.user.value.fullName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
          subtitle: Text(
            controller.user.value.email,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .apply(color: AppColors.white),
          ),
          trailing: IconButton(
            onPressed: onPresssed,
            icon: const Icon(
              Iconsax.edit,
              color: AppColors.white,
            ),
          ),
        ));
  }
}
