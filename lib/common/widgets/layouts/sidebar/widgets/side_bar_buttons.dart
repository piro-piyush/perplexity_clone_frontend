import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/widgets/side_bar_button.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideBarButtons extends StatelessWidget {
  const SideBarButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SidebarController.instance;
    return Expanded(
      child: Column(
        spacing: 4,
        crossAxisAlignment: controller.isCollapsed.value
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          SideBarButton(
            route: XRoutes.home,
            iconImage: XImages.home,
            text: "Home",
          ),
          SideBarButton(
            route: XRoutes.discover,
            iconImage: XImages.discover,
            text: "Discover",
          ),
          SideBarButton(
            route: XRoutes.spaces,
            iconImage: XImages.spaces,
            text: "Spaces",
          ),
          SideBarButton(
            route: XRoutes.library,
            iconImage: XImages.library,
            text: "Library",
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
