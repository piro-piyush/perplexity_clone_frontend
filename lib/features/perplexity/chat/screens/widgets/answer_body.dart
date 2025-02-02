import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/answer_section.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/sources_section.dart';

class AnswerBody extends StatelessWidget {
  const AnswerBody({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
