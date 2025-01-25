import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/widgets/answer_section.dart';
import 'package:perplexity_clone/widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;

  const ChatPage({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? SideBar() : SizedBox(),
          kIsWeb ? const SizedBox(width: 100) : SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
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
          kIsWeb
              ? Placeholder(
                  strokeWidth: 0,
                  color: XColors.background,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
