import 'package:flutter/material.dart';

import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/features/shop/screens/orders/widgets/order_list.dart';
import 'package:minimart/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title:
            Text('My Order', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: OrderListItem(),
      ),
    );
  }
}
