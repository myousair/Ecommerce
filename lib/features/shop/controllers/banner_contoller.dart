import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:minimart/data/repository/banner/banner_repository.dart';
import 'package:minimart/dummy_data.dart';
import 'package:minimart/features/shop/models/banner_model.dart';
import 'package:minimart/utils/popups/loaders.dart';

class BannerController extends GetxController {
  final isLoading = false.obs;
  final carouselCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    // TODO: implement onInit
    super.onInit();
  }

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }

  Future<void> fetchBanners() async {
    try {
      isLoading.value = true;

      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      this.banners.assignAll(banners);
    } catch (e) {
      Loaders.errorSnackBar(title: 'OhSnap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> uploadBanners() async {
    try {
      isLoading.value = true;
      print('Starting banner upload...');

      // Use file picker to select files
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.image,
      );

      if (result != null) {
        for (var filePath in result.paths) {
          if (filePath != null) {
            File file = File(filePath);
            if (!file.existsSync()) {
              print('File does not exist: $filePath');
              Loaders.errorSnackBar(
                  title: 'Upload Failed', message: 'File not found: $filePath');
              continue; // Skip this file and move to the next
            }

            String fileName = file.path.split('/').last;
            final storageRef =
                FirebaseStorage.instance.ref().child('banners/$fileName');
            final uploadTask = storageRef.putFile(file);

            final snapshot = await uploadTask.whenComplete(() => {});
            final downloadUrl = await snapshot.ref.getDownloadURL();
            print('Banner uploaded with URL: $downloadUrl');

            // Optionally, save banner information to Firestore
            // Example: bannerRepo.saveBanner(BannerModel(...));
          }
        }

        Loaders.successSnackBar(
            title: 'Success!', message: 'Banners uploaded successfully!');
      } else {
        print('No files selected');
      }
    } catch (e) {
      print('Error uploading banners: $e');
      Loaders.errorSnackBar(title: 'Upload Failed', message: e.toString());
    } finally {
      isLoading.value = false;
      print('Banner upload complete.');
    }
  }
}
