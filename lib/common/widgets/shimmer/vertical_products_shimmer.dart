import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:minimart/common/widgets/layout/grid_layout.dart';
import 'package:minimart/common/widgets/shimmer/shimmer.dart';
import 'package:minimart/utils/constants/sizes.dart';

class VerticalProductsShimmer extends StatelessWidget {
  const VerticalProductsShimmer({super.key, this.itemCount = 4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => const SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerEffects(width: 180, height: 180),
            SizedBox(height: TSizes.spaceBtwItems),
            ShimmerEffects(width: 160, height: 15),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            ShimmerEffects(width: 110, height: 15),
          ],
        ),
      ),
    );
  }
}
