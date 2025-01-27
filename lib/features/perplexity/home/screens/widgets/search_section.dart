import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_bar_button.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final queryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    queryController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    queryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'What do you want to know?',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            height: 1,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          height: 119,
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
            children: [
              TextField(
                controller: queryController,
                decoration: InputDecoration(
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
                      Transform.scale(
                        scale: 0.7,
                        child: Switch(
                          value: false,
                          onChanged: (value) {
                            setState(() {
                              // isOn = value;
                            });
                          },
                          padding: EdgeInsets.zero,
                          activeColor: XColors.submitButton,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.transparent,
                          trackOutlineWidth:
                              WidgetStateProperty.all(1.0), // Border width
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
                        onTap: () {
                          ChatWebService().chat(queryController.text.trim());
                          Get.toNamed(XRoutes.chat,
                              arguments: queryController.text.trim());
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: queryController.text.isEmpty
                                ? XColors.proButton
                                : XColors.submitButton,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: queryController.text.isEmpty
                                  ? XColors.iconGrey
                                  : XColors.background,
                              size: 14,
                            ),
                          ),
                        ),
                      )
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
