import 'package:flutter/cupertino.dart';
import 'package:minimart/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:minimart/common/widgets/custom_shape/curved_edge/curvedEdge_widgets.dart';
import 'package:minimart/utils/constants/color.dart';


class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: AppColors.Primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                  backgroundColor: AppColors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: AppColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
