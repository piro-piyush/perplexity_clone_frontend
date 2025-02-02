import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
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
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnswerHeader(
                header: question,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 96),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Expanded(flex: 3, child: AnswerBody(question: question)),
                    Expanded(
                      child: XDeviceUtils.isDesktopScreen(context)
                          ? SideSectionChat()
                          : SizedBox(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Question Mark Icon
        QuestionMark(),
      ],
    );
  }
}



