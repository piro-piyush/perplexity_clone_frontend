import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class QuestionMark extends StatefulWidget {
  const QuestionMark({super.key});

  @override
  State<QuestionMark> createState() => _QuestionMarkState();
}

class _QuestionMarkState extends State<QuestionMark> {
  bool isHoveringQuestionMark = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
