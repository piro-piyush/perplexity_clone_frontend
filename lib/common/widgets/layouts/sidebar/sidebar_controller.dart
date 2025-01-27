import 'package:get/get.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class SidebarController extends GetxController {
  static SidebarController get instance => Get.find();

  final activeItem = XRoutes.home.obs; // Active route
  final hoverItem = ''.obs;
  RxBool isCollapsed = true.obs;

  // Map for navigation bar indices to routes
  final bottomNavRoutes = [
    XRoutes.home,
    XRoutes.discover,
    XRoutes.spaces,
    XRoutes.library,
    XRoutes.signIn,
  ];

  // Update active route
  void changeActiveItem(String route) => activeItem.value = route;

  // Update hovered route
  void changeHoverItem(String route) {
    hoverItem.value = route;
  }

  // Check if route is active
  bool isActive(String route) => activeItem.value == route;

  // Check if route is hovered
  bool isHovering(String route) => hoverItem.value == route;

  // Navigation on menu tap
  void menuOnTap(String route) {
    if (!isActive(route)) {
      changeActiveItem(route);
      if (XDeviceUtils.isMobileScreen(Get.context!)) Get.back();
      Get.toNamed(route);
    }
  }

  // Handle bottom navigation bar tap
  void onBottomNavTap(int index) {
    final selectedRoute = bottomNavRoutes[index];
    if (!isActive(selectedRoute)) {
      changeActiveItem(selectedRoute);
      Get.toNamed(selectedRoute);
    }
  }

  // Get the index of the active route for BottomNavigationBar
  int get selectedIndex => bottomNavRoutes
      .indexOf(activeItem.value); // Return the active route index
}
