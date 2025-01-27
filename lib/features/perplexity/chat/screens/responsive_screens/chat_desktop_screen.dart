import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/answer_section.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/right_side_bar_button.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/sources_section.dart';

class ChatDesktopScreen extends StatelessWidget {
  final String question;

  const ChatDesktopScreen({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 159),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      SourcesSection(),
                      SizedBox(height: 24),
                      AnswerSection(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            XDeviceUtils.isDesktopScreen(context)
                ? SizedBox(
                    width: 354,
                    height: 164,
                    child: Column(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: RightSideBarButton(
                            image: XImages.image,
                            text: "Search Images",
                          ),
                        ),
                        Expanded(
                          child: RightSideBarButton(
                            image: XImages.video,
                            text: "Search Videos",
                          ),
                        ),
                        Expanded(
                          child: RightSideBarButton(
                            image: XImages.genImage,
                            text: "Generate Image",
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
