import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  bool isLoading = true;
  String fullResponse = '''
As of the end of Day 1 in the fourth Test match between India and Australia, the score stands at **Australia 311/6**. The match is being held at the Melbourne Cricket Ground (MCG) on December 26, 2024.

## Match Overview
- **Toss**: Australia won the toss and opted to bat first.
- **Top Performers**:
  - **Steve Smith** is currently unbeaten on **68 runs** from **111 balls**.
  - **Sam Konstas**, making his Test debut, scored a significant **60 runs** from **65 balls**, contributing to a strong start for Australia.
  - Other notable contributions include Usman Khawaja and Marnus Labuschagne, both adding valuable runs to the total.

## Session Highlights
- In the first session, Australia reached **112 runs for the loss of one wicket**, with Konstas and Khawaja building an impressive opening partnership of **89 runs** before Konstas was dismissed by Ravindra Jadeja.
- After lunch, Australia maintained their momentum but faced a collapse as Jasprit Bumrah struck back, taking crucial wickets that brought India back into contention. Australia went from a strong position of **223/2** to **263/5** at one point, losing three wickets for just nine runs.
''';

  @override
  void initState() {
    super.initState();
    ChatWebService().contentStream.listen((data) {
      if (isLoading) {
        fullResponse = "";
      }
      setState(() {
        fullResponse += data['data'];
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              XImages.appIcon,
              colorFilter: ColorFilter.mode(
                XColors.iconGrey,
                BlendMode.srcIn,
              ),
              height: 24,
              width: 19,
            ),
            SizedBox(width: 12),
            Text(
              'Answer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Skeletonizer(
          enabled: isLoading,
          effect: ShimmerEffect(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[700]!,
            duration: Duration(seconds: 2),
          ),
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet:
                MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration: BoxDecoration(
                color: XColors.cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              code: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
