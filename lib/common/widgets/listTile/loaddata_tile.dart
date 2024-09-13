import 'package:flutter/material.dart';
import 'package:minimart/utils/constants/color.dart';

class UploadDataTile extends StatelessWidget {
  const UploadDataTile(
      {super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.Primary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      trailing: const Icon(
        Icons.arrow_circle_up_outlined,
        size: 25,
        color: AppColors.Primary,
      ),
      onTap: onTap,
    );
  }
}
