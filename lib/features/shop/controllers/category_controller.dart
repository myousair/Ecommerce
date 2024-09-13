import 'package:get/get.dart';
import 'package:minimart/data/repository/categories/category_repository.dart';
import 'package:minimart/features/shop/models/category_model.dart';
import 'package:minimart/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  Future<void> fetchCategories() async {
    try {
      isLoading.value = true;

      final categories = await _categoryRepository.getAllCategories();

      allCategories.assignAll(categories);

      featuredCategories.assignAll(allCategories
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .take(11)
          .toList());
  
    } catch (e) {
      Loaders.errorSnackBar(title: 'OhSnap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> uploadCategories(List<CategoryModel> categories) async {
    try {
      isLoading.value = true;
      await _categoryRepository.uploadDummyData(categories);
    } catch (e) {
      Loaders.errorSnackBar(title: 'OhSnap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
