import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/shimmer/shimmer.dart';
import 'package:minimart/utils/constants/sizes.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 11});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: itemCount,
          separatorBuilder: (_, __) =>
              const SizedBox(width: TSizes.spaceBtwItems),
          itemBuilder: (_, __) {
            return const Column(
              children: [
                ShimmerEffects(width: 55, height: 55, radius: 55),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                ShimmerEffects(
                  width: 55,
                  height: 8,
                ),
              ],
            );
          }),
    );
  }
}
