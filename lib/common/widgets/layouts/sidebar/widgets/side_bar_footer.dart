import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideBarFooter extends StatelessWidget {
  const SideBarFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            controller.isCollapsed.toggle();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            margin: EdgeInsets.symmetric(vertical: 14),
            child: SizedBox(
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
                        XColors.activeIconColor, BlendMode.srcIn),
                    height: 20,
                    width: 25,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Divider(
            thickness: 0.1,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Stack(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: XColors.iconBg,
                    ),
                    child: Center(
                      child: ClipOval(
                        child: Image.network(
                          XImages.user,
                          fit: BoxFit.cover,
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: XColors.iconBg,
                        border: Border.all(color: XColors.iconBg, width: 1),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
