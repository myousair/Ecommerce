import 'package:flutter/material.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/devices/device_utility.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class Ttabbar extends StatelessWidget implements PreferredSizeWidget {
  const Ttabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.Primary,
        unselectedLabelColor: AppColors.darkgrey,
        labelColor: dark ? AppColors.white : AppColors.Primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
