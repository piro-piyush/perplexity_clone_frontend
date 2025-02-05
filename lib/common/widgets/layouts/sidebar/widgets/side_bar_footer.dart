import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideBarFooter extends StatefulWidget {
  const SideBarFooter({
    super.key,
  });

  @override
  State<SideBarFooter> createState() => _SideBarFooterState();
}

class _SideBarFooterState extends State<SideBarFooter> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    return controller.isCollapsed.value
        ? GestureDetector(
            onTap: () {
              controller.isCollapsed.toggle();
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Tooltip(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                message: "Expand",
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
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovering = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovering = false;
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: XColors.iconBg),
                    child: Center(
                      child: SvgPicture.asset(
                        XImages.arrowRight,
                        colorFilter: ColorFilter.mode(
                            isHovering ? XColors.iconGrey : XColors.whiteColor,
                            BlendMode.srcIn),
                        height: 20,
                        width: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(XRoutes.login),
                  child: Container(
                    width: 188,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: XColors.submitButton,
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: XColors.background,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovering = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovering = false;
                    });
                  },
                  child: GestureDetector(
                    onTap: () => Get.toNamed(XRoutes.login),
                    child: Container(
                      width: 188,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: XColors.iconBg,
                      ),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: isHovering
                                ? XColors.iconGrey
                                : XColors.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
