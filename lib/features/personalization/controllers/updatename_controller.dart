import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/data/repository/user/user_repository.dart';
import 'package:minimart/features/authentication/controllers/network/network_manager.dart';
import 'package:minimart/features/personalization/controllers/user_controller.dart';
import 'package:minimart/features/personalization/screens/profile/profile.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/popups/fullscreen_loaders.dart';
import 'package:minimart/utils/popups/loaders.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializenames();
    super.onInit();
  }

  Future<void> initializenames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUsername() async {
    try {
      FullScreenLoader.openLoadingDialog(
          'We are updating your information...', Timage.verifying);
      //

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //

      if (!updateUserNameFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };

      await userRepository.updateSingleField(name);

      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated');

      Get.off(() => const ProfileScreen());
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
