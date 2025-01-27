import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_indicator.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SideBarButton extends StatelessWidget {
  final String iconImage;
  final String text;
  final String route;

  const SideBarButton({
    super.key,
    required this.iconImage,
    required this.text,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    return Tooltip(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      message: text,
      verticalOffset: 30,
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        color: XColors.iconBg,
        borderRadius: BorderRadius.circular(4),
      ),
      waitDuration: const Duration(milliseconds: 100),
      // De
      child: Obx(() {
        final isActive = controller.isActive(route);
        final isHovering = controller.isHovering(route);
        return InkWell(
          onTap: () => controller.menuOnTap(route),
          onHover: (hovering) => hovering
              ? controller.changeHoverItem(route)
              : controller.changeHoverItem(""),
          child: Obx(
            () {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: isHovering ? XColors.iconBg : Colors.transparent,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: Row(
                          mainAxisAlignment: controller.isCollapsed.value
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.start,
                          children: [
                            controller.isCollapsed.value
                                ? SvgPicture.asset(
                                    iconImage,
                                    colorFilter: ColorFilter.mode(
                                      isActive
                                          ? XColors.whiteColor
                                          : (isHovering
                                              ? XColors.whiteColor
                                              : XColors.iconGrey),
                                      BlendMode.srcIn,
                                    ),
                                    height: 22,
                                    width: 25,
                                  )
                                : SvgPicture.asset(
                                    iconImage,
                                    colorFilter: ColorFilter.mode(
                                      isActive
                                          ? XColors.whiteColor
                                          : (isHovering
                                              ? XColors.whiteColor
                                              : XColors.iconGrey),
                                      BlendMode.srcIn,
                                    ),
                                    height: 16,
                                    width: 20,
                                  ),
                            SizedBox(
                              width: 4,
                            ),
                            controller.isCollapsed.value
                                ? const SizedBox()
                                : Text(
                                    text,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: isActive
                                          ? XColors
                                              .whiteColor // Text color for active
                                          : XColors
                                              .textGrey, // Default text color
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Side Indicator
                  if (isActive)
                    controller.isCollapsed.value ? SideIndicator() : SizedBox()
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
