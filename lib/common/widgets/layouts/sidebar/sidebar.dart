import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_bar_buttons.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_bar_footer.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_bar_header.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SidebarController());
    return Obx(
      () => AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 200),
        width: controller.isCollapsed.value ? 90 : 220,
        decoration: BoxDecoration(
          color: XColors.sideNav,
        ),
        child: Column(
          children: [
            // Header
            SideBarHeader(),

            // Buttons
            Expanded(child: SideBarButtons()),

            // Footer
            SideBarFooter()
          ],
        ),
      ),
    );
  }
}
