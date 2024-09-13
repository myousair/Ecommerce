import 'package:get/get.dart';
import 'package:minimart/features/authentication/controllers/network/network_manager.dart';

class GeneralBuildings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
