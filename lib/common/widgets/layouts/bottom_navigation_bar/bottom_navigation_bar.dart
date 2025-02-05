import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_indicator.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SidebarController());

    return Obx(() {
      return Container(
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          color: XColors.sideNav,
        ),
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              child: BottomNavigationBarItem(
                route: XRoutes.home,
                iconImage: XImages.home,
                text: "Home",
              ),
            ),
            Expanded(
              child: BottomNavigationBarItem(
                route: XRoutes.discover,
                iconImage: XImages.discover,
                text: "Discover",
              ),
            ),
            Expanded(
              child: BottomNavigationBarItem(
                route: XRoutes.spaces,
                iconImage: XImages.spaces,
                text: "Spaces",
              ),
            ),
            Expanded(
              child: BottomNavigationBarItem(
                route: XRoutes.library,
                iconImage: XImages.library,
                text: "Library",
              ),
            ),
            if (controller.isCollapsed.value)
              Expanded(
                child: BottomNavigationBarItem(
                  route: XRoutes.login,
                  iconImage: XImages.userIcon,
                  text: "Sign In",
                ),
              ),
          ],
        ),
      );
    });
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  const BottomNavigationBarItem(
      {super.key,
      required this.iconImage,
      required this.text,
      required this.route});

  final String iconImage;
  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    final isActive = controller.isActive(route);
    final isHovering = controller.isHovering(route);
    return GestureDetector(
      onTap: () => controller.menuOnTap(route),
      child: SizedBox(
        height: 56,
        child: Column(
          children: [
            if (isActive)
              controller.isCollapsed.value
                  ? SideIndicator(
                      width: double.infinity,
                      height: 3,
                    )
                  : SizedBox(),
            SizedBox(
              height: 5,
            ),
            SvgPicture.asset(
              iconImage,
              height: 21,
              width: 17,
              colorFilter: ColorFilter.mode(
                isActive
                    ? XColors.whiteColor
                    : (isHovering ? XColors.whiteColor : XColors.iconGrey),
                BlendMode.srcIn,
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
