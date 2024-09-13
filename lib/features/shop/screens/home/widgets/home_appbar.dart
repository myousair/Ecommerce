import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:minimart/common/widgets/shimmer/shimmer.dart';
import 'package:minimart/features/personalization/controllers/user_controller.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Texts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const ShimmerEffects(width: 70, height: 10);
            } else {
              return Text(
                controller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: AppColors.white),
              );
            }
          }),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          iconColor: AppColors.white,
        ),
      ],
    );
  }
}
