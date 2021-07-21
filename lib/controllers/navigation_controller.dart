import 'package:get/get.dart';
import 'package:getxnavigation/enums/drawer_label.dart';
import 'package:getxnavigation/routes/title_routing.dart';

class NavigationController extends GetxController {
  final index = Rx<DrawerLabel>(DrawerLabel.chambers);
  final isExpanded = true.obs;

  void switchExpanded() => isExpanded.toggle();

  @override
  void onInit() {
    super.onInit();

    ever(index, (_) {
      Get.toNamed(index.value.page);
      TitlePage.update(title: index.value.title);
    });
  }
}
