import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/chips/choice_chip.dart';
import 'package:minimart/common/widgets/custom_shape/containers/rounded.dart';
import 'package:minimart/common/widgets/products/product_cart/product_pricetext.dart';
import 'package:minimart/common/widgets/texts/product_title.dart';
import 'package:minimart/common/widgets/texts/section_heading.dart';
import 'package:minimart/data/repository/authentication/authentication_repository.dart';
import 'package:minimart/features/shop/controllers/products/variation_controller.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VariationController());
    final dark = HelperFunction.isDarkMode(context);
    return Obx(
      () => Column(
        children: [
          if (controller.selectedVariation.value.id.isNotEmpty)
            RoundedContainer(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? AppColors.darkergrey : AppColors.grey,
              child: Column(
                children: [
                  Row(
                    children: [
                      const SectionHeading(
                          title: 'Variation', showActionButton: false),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ProductTitle(
                                  title: 'Price : ', smallSize: true),
                              if (controller.selectedVariation.value.salePrice >
                                  0)
                                Text(
                                  'Rs${controller.selectedVariation.value.price}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .apply(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                              const SizedBox(width: TSizes.spaceBtwItems),
                              ProductPriceText(
                                price: controller.getVariationPrice(),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const ProductTitle(
                                  title: 'Stock : ', smallSize: true),
                              Text(controller.variationStockStatus.value,
                                  style:
                                      Theme.of(context).textTheme.titleMedium)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                   ProductTitle(
                    title:
                        controller.selectedVariation.value.description ?? '',
                    smallSize: true,
                    maxLines: 4,
                  ),
                ],
              ),
            ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Column(
            children: product.productAttributes!
                .map((attribute) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHeading(title: attribute.name ?? ''),
                        const SizedBox(height: TSizes.spaceBtwItems / 2),
                        Obx(
                          () => Wrap(
                              spacing: 8,
                              children: attribute.values!.map((attributeValue) {
                                final isSelected = controller
                                        .selectedAttributes[attribute.name] ==
                                    attributeValue;
                                final available = controller
                                    .getAttributesAvailabilityInVariation(
                                        product.productVariations!,
                                        attribute.name!)
                                    .contains(attributeValue);
                                return ChoiceChipWidget(
                                    text: attributeValue,
                                    selected: isSelected,
                                    onSelected: available
                                        ? (selected) {
                                            if (selected && available) {
                                              controller.onAttributeSelected(
                                                  product,
                                                  attribute.name ?? '',
                                                  attributeValue);
                                            }
                                          }
                                        : null);
                              }).toList()),
                        )
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}


  // Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           const SectionHeading(title: 'Size'),
  //           const SizedBox(height: TSizes.spaceBtwItems / 2),
  //           Wrap(
  //             spacing: 6,
  //             children: [
  //               ChoiceChipWidget(
  //                   text: 'Eu 34', selected: true, onSelected: (value) {}),
  //               ChoiceChipWidget(
  //                   text: 'Eu 36', selected: false, onSelected: (value) {}),
  //               ChoiceChipWidget(
  //                   text: 'Eu 38', selected: false, onSelected: (value) {})
  //             ],
  //           )
  //         ],
  //       )