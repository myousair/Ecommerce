import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/widgets/loaders/animation_loader.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/helpers/helper_function.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        barrierDismissible: false,
        context: Get.overlayContext!,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: HelperFunction.isDarkMode(Get.context!)
                  ? AppColors.dark
                  : AppColors.white,
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  AnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
