import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/features/perplexity/home/controllers/home_controller.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_bar_button.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'What do you want to know?',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            height: 1,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
          decoration: BoxDecoration(
            color: XColors.searchBar,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: XColors.searchBarBorder,
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                expands: false,
                controller: controller.queryController,
                minLines: 2,
                maxLines: 12,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Ask anything...',
                  hintStyle: TextStyle(
                    color: XColors.textGrey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SearchBarButton(
                        icon: Icons.filter_list_outlined,
                        text: 'Focus',
                      ),
                      XDeviceUtils.isMobileScreen(context)
                          ? Icon(
                              Icons.add_circle_outline_outlined,
                              color: XColors.iconGrey,
                            )
                          : SearchBarButton(
                              icon: Icons.add_circle_outline_outlined,
                              text: "Attach",
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: controller.isPro.value,
                            onChanged: (value) {
                              controller.isPro.value = value;
                            },
                            padding: EdgeInsets.zero,
                            inactiveThumbColor: Colors.grey,
                            activeTrackColor: XColors.submitButton,
                            inactiveTrackColor: Colors.transparent,
                            trackOutlineWidth:
                                WidgetStateProperty.all(1.0), // Border width
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: Center(
                          child: Text(
                            "Pro",
                            style: TextStyle(
                                color: XColors.iconGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => controller.search(),
                        child: Obx(
                          () => Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: controller.queryText.value.isEmpty
                                  ? XColors.proButton
                                  : XColors.submitButton,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: controller.queryText.value.isEmpty
                                    ? XColors.iconGrey
                                    : XColors.background,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
