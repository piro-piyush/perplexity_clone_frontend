import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    return Column(
      children: [
        // Header
        Obx(() => controller.isCollapsed.value
            ? SizedBox(
                height: 45,
                child: SvgPicture.asset(
                  XImages.darkAppLogo,
                  colorFilter:
                      ColorFilter.mode(XColors.whiteColor, BlendMode.srcIn),
                  fit: BoxFit.contain,
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                        height: 35, width: 164, XImages.cyanLogoWithWhiteText),
                    GestureDetector(
                      onTap: () {
                        controller.isCollapsed.toggle();
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        margin: EdgeInsets.symmetric(vertical: 14),
                        child: SizedBox(
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                XImages.arrowLeft,
                                colorFilter: ColorFilter.mode(
                                    XColors.iconGrey, BlendMode.srcIn),
                                height: 14,
                                width: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),

        // Sub - Header
        controller.isCollapsed.value
            ? SizedBox(
                height: 104,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: XColors.iconBg),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: XColors.whiteColor,
                        size: controller.isCollapsed.value ? 30 : 60,
                      ),
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  child: Container(
                    width: 184,
                    height: 37,
                    decoration: BoxDecoration(
                        color: XColors.background,
                        borderRadius: BorderRadius.circular(37),
                        border: Border.all(color: XColors.iconBg, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 8,
                        right: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Thread",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 38,
                                height: 20,
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: XColors.iconBg, width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Ctrl",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: XColors.iconBg, width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "I",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
