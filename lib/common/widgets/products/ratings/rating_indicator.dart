import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/utils/constants/color.dart';


class RatingBarIndicators extends StatelessWidget {
  const RatingBarIndicators({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: AppColors.grey,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: AppColors.Primary,
            ));
  }
}
