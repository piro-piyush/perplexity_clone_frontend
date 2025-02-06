import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/features/perplexity/discover/controllers/discover_controller.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiscoverController());
    return TabBar(
      controller: controller.tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      padding: EdgeInsets.symmetric(vertical: 8),
      dragStartBehavior: DragStartBehavior.start,
      dividerHeight: 0,
      automaticIndicatorColorAdjustment: true,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF192A2C),
      ),
      labelColor: Color(0xFF20B8CD),
      labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      unselectedLabelColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 12),
      tabs: controller.tabs
          .asMap()
          .map((index, tab) {
            return MapEntry(
              index,
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        tab["icon"]!,
                        colorFilter: ColorFilter.mode(
                          controller.tabController.index == index
                              ? Color(0xFF20B8CD) // Selected tab color
                              : Colors.white,
                          BlendMode.srcIn,
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 8),
                      Text(tab["title"]!),
                    ],
                  ),
                ),
              ),
            );
          })
          .values
          .toList(),
    );
  }
}
