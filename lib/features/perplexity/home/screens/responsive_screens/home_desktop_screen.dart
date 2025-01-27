import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/footer_section.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_searches_buttons.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_section.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class HomeDesktopScreen extends StatefulWidget {
  const HomeDesktopScreen({super.key});

  @override
  State<HomeDesktopScreen> createState() => _HomeDesktopScreenState();
}

class _HomeDesktopScreenState extends State<HomeDesktopScreen> {
  bool isHoveringQuestionMark = false;

  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: SizedBox(
                  height: 625,
                  width: 640,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // Search Section
                      SizedBox(
                        height: 32,
                      ),
                      SearchSection(),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(height: 16),
                      QuickSearchesButtons(),
                    ],
                  ),
                ),
              ),

              // Footer Section
              const FooterSection(),
            ],
          ),
        ),

        // Question Mark Icon
        Positioned(
          right: 15,
          bottom: 15,
          child: GestureDetector(
            onTap: () {
              // Handle tap if needed
            },
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHoveringQuestionMark = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHoveringQuestionMark = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: XColors.whiteColor,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    XImages.question,
                    height: 17,
                    width: 14,
                    colorFilter: ColorFilter.mode(
                      isHoveringQuestionMark
                          ? XColors.submitButton
                          : XColors.background,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
