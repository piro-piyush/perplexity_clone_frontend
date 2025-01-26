import 'package:get/get.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class SidebarController extends GetxController {
  static SidebarController get instance => Get.find();

  final activeItem = XRoutes.home.obs;
  final hoverItem = ''.obs;
  RxBool isCollapsed = true.obs;

  void changeActiveItem(String route) => activeItem.value = route;

  void changeHoverItem(String route) {
    hoverItem.value = route;
  }

  bool isActive(String route) => activeItem.value == route;

  bool isHovering(String route) => hoverItem.value == route;

  void menuOnTap(String route) {
    if (!isActive(route)) {
      changeActiveItem(route);
      if (XDeviceUtils.isMobileScreen(Get.context!)) Get.back();
      Get.toNamed(route);
    }
  }
}
