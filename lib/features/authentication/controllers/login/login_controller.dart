import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:minimart/data/repository/authentication/authentication_repository.dart';
import 'package:minimart/features/authentication/controllers/network/network_manager.dart';
import 'package:minimart/features/personalization/controllers/user_controller.dart';
import 'package:minimart/utils/constants/image_string.dart';
import 'package:minimart/utils/popups/fullscreen_loaders.dart';
import 'package:minimart/utils/popups/loaders.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  Future<void> googleSignIn() async {
    try {
      print("Google Sign-In process started.");

      FullScreenLoader.openLoadingDialog(
          'Logging you in. . .', Timage.verifying);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      final userCredentials =
          await AuthenticationRepository.instance.signInGoogle();
      print("User signed in with Google. User credentials: $userCredentials");

      await userController.saveUserRecord(userCredentials);
      print("User record saved successfully.");

      FullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect();
      print("Redirecting to appropriate screen.");
    } catch (e) {
      FullScreenLoader.stopLoading();
      print("Error occurred during Google Sign-In: $e");
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> emailandPasswordSignIn() async {
    try {
      FullScreenLoader.openLoadingDialog(
          'Logging you in. . .', Timage.verifying);

      //

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //

      if (!loginFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //

      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailandPassword(email.text.trim(), password.text.trim());

      FullScreenLoader.stopLoading();

      //

      AuthenticationRepository.instance.screenRedirect();
    }
    //
    catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap !', message: e.toString());
    }
  }
}
