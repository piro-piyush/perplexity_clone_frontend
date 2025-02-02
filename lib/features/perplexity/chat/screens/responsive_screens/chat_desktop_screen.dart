import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/answer_body.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/answer_header.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/side_section_chat.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class ChatDesktopScreen extends StatelessWidget {
  final String question;

  const ChatDesktopScreen({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnswerHeader(),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  AnswerBody(question: question),
                  XDeviceUtils.isDesktopScreen(context)
                      ? SideSectionChat()
                      : SizedBox(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
