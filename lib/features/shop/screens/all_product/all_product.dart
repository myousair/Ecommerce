import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/common/widgets/products/sortable/sortable_products.dart';
import 'package:minimart/common/widgets/shimmer/vertical_products_shimmer.dart';
import 'package:minimart/features/shop/controllers/products/all_product_controller.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/cloud_helper.dart';

class AllProducts extends StatelessWidget {
  const AllProducts(
      {super.key, required this.title, this.query, this.futureMethod});

  final String title;
  final Query? query;
  final Future<List<ProductModel>>? futureMethod;

  @override 
  Widget build(BuildContext context) {
    final controller = Get.put(AllProductController());
    return Scaffold(
      appBar: TAppBar(
        title: Text(title),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: FutureBuilder(
            future: futureMethod ?? controller.fetchProductsByQuery(query),
            builder: (context, snapshot) {
              const loader = VerticalProductsShimmer();
              final widget = CloudHelperFunctions.checkMultipupleRecordState(
                  snapshot: snapshot, loader: loader);

              if (widget != null) return widget;
              final products = snapshot.data!;
              return SortableProducts(products: products);
            },
          ),
        ),
      ),
    );
  }
}
