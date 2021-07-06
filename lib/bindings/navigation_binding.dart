import 'package:get/get.dart';
import 'package:getxnavigation/controllers/navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController(), permanent: true);
  }
}
