import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/data/repository/authentication/authentication_repository.dart';
import 'package:minimart/data/repository/user/user_repository.dart';
import 'package:minimart/features/authentication/controllers/network/network_manager.dart';
import 'package:minimart/features/authentication/models/user_model.dart';
import 'package:minimart/features/authentication/screens/signup/verify_email.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/popups/fullscreen_loaders.dart';
import 'package:minimart/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacypolicy = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final username = TextEditingController();
  final lastname = TextEditingController();
  final firstname = TextEditingController();
  final phoneNo = TextEditingController();

  GlobalKey<FormState> signupformkey = GlobalKey<FormState>();

  void signup() async {
    try {
      FullScreenLoader.openLoadingDialog(
          'We are processing your information. . .', Timage.verify);

      //

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //

      if (!signupformkey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //

      if (!privacypolicy.value) {
        FullScreenLoader.stopLoading();
        Loaders.warningSnackBar(
            title: 'Accept the privacy policy',
            message:
                'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.');
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newuser = UserModel(
          id: userCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim(),
          firstName: firstname.text.trim(),
          lastName: lastname.text.trim(),
          phoneNumber: phoneNo.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newuser);

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue');

      Get.to(() => VerificationEmailScreen(email: email.text.trim()));
    }
    //
    catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap !', message: e.toString());
    }
  }
}
