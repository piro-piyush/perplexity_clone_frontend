import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/widgets/search_bar_button.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'What do you want to know?',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 36),
        Container(
          width: 640,
          height: 119,
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: queryController,
                  decoration: InputDecoration(
                    hintText: 'Ask anything...',
                    hintStyle: TextStyle(
                      color: XColors.textGrey,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SearchBarButton(
                          icon: Icons.filter_list_outlined,
                          text: 'Focus',
                        ),
                        const SizedBox(width: 12),
                        SearchBarButton(
                          icon: Icons.add_circle_outline_outlined,
                          text: 'Attach',
                        ),
                      ],
                    ),
                    Row(
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
                          width: 10,
                        ),
                        Text(
                          "Pro",
                          style: TextStyle(
                              color: XColors.iconGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            ChatWebService().chat(queryController.text.trim());
                            Get.toNamed(XRoutes.chat,
                                arguments: queryController.text.trim());
                          },
                          child: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: queryController.text.isEmpty
                                  ? XColors.proButton
                                  : XColors.submitButton,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: queryController.text.isEmpty
                                  ? XColors.iconGrey
                                  : XColors.background,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
