import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:minimart/common/widgets/appbar/appbar.dart';
import 'package:minimart/features/personalization/controllers/address_controller.dart';
import 'package:minimart/features/personalization/screens/address/add_new_address.dart';
import 'package:minimart/features/personalization/screens/address/widget/single_address.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/constants/sizes.dart';
import 'package:minimart/utils/helpers/cloud_helper.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.Primary,
        onPressed: () => Get.to(
          () => const AddNewAddress(),
        ),
        child: const Icon(Iconsax.add, color: AppColors.white),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('My Addresses',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Obx(
              () => FutureBuilder(
                key: Key(controller.refreshData.value.toString()),
                future: controller.getallUserAddresses(),
                builder: (context, snapshot) {
                  final response =
                      CloudHelperFunctions.checkMultipupleRecordState(
                          snapshot: snapshot);
                  if (response != null) return response;
                  final addresses = snapshot.data!;

                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: addresses.length,
                      itemBuilder: (_, index) => SingleAddress(
                            address: addresses[index],
                            onTap: () =>
                                controller.selectAddress(addresses[index]),
                          ));
                },
              ),
            )),
      ),
    );
  }
}
