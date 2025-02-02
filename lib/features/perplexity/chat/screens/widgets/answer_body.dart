import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/answer_section.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/related_section.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/sources_section.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class AnswerBody extends StatelessWidget {
  const AnswerBody({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
            SizedBox(height: 16),
            RelatedSection()
          ],
        ),
        AnswerSectionChat()
      ],
    );
  }
}

class AnswerSectionChat extends StatelessWidget {
  const AnswerSectionChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(bottom: 15, child: Container());
  }
}
