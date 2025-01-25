import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key,
    required this.itemName,
    required this.icon,
    required this.route,
  });

  final String itemName;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());
    return InkWell(
      onTap: () => menuController.menuOnTap(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(""),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: XSizes.xs),
          child: Container(
            decoration: BoxDecoration(
              // color: menuController.isHovering(route) ||
              //     menuController.isActive(route)
              //     ? XColors.primary
              //     : Colors.transparent,
              borderRadius: BorderRadius.circular(XSizes.cardRadiusMd),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon
                Padding(
                  padding: EdgeInsets.only(
                      // left: TSizes.lg,
                      // top: TSizes.md,
                      // bottom: TSizes.md,
                      // right: TSizes.md
                      ),
                  child: menuController.isActive(route)
                      ? Icon(
                          icon,
                          size: 22,
                          // color: XColors.white,
                        )
                      : Icon(
                          icon,
                          size: 22,
                          // color: menuController.isHovering(route)
                          //     ? TColors.white
                          //     : TColors.darkGrey,
                        ),
                ),

                // Text
                if (menuController.isHovering(route))
                  Flexible(
                    child: Text(itemName,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            // color: XColors.white
                            )),
                  )
                else
                  Flexible(
                    child: Text(itemName,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            // color: XColors.darkGrey
                            )),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
