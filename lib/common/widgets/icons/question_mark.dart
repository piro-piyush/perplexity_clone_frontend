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
  bool isTooltipVisible = false;

  void toggleTooltip() {
    setState(() {
      isTooltipVisible = !isTooltipVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isTooltipVisible)
            Container(
              width: 216,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  color: XColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 0.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: QuestionMarkToolTipTile(
                      iconImage: XImages.getStarted,
                      title: "Get Started",
                      onTap: () {},
                    ),
                  ),
                  Flexible(
                    child: QuestionMarkToolTipTile(
                      iconImage: XImages.helpCenter,
                      title: "Help Center",
                      onTap: () {},
                    ),
                  ),
                  Flexible(
                    child: QuestionMarkToolTipTile(
                      iconImage: XImages.keyboardShortcuts,
                      title: "Keyboard Shortcuts",
                      onTap: () {},
                    ),
                  ),
                  Flexible(
                    child: QuestionMarkToolTipTile(
                      iconImage: XImages.pro,
                      title: "Perlplexity PRO",
                      onTap: () {},
                    ),
                  ),
                  Flexible(
                    child: QuestionMarkToolTipWithoutIconTile(
                        title: "Terms of Service", onTap: () {}),
                  ),
                  Flexible(
                    child: QuestionMarkToolTipWithoutIconTile(
                        title: "Privacy Policy", onTap: () {}),
                  ),
                ],
              ),
            ),
          GestureDetector(
            onTap: toggleTooltip,
            child: MouseRegion(
              onEnter: (_) => setState(() => isHoveringQuestionMark = true),
              onExit: (_) => setState(() => isHoveringQuestionMark = false),
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
        ],
      ),
    );
  }
}

class QuestionMarkToolTipTile extends StatefulWidget {
  const QuestionMarkToolTipTile({
    super.key,
    required this.title,
    required this.iconImage,
    required this.onTap,
  });

  final String title;
  final String iconImage;
  final VoidCallback onTap;

  @override
  State<QuestionMarkToolTipTile> createState() =>
      _QuestionMarkToolTipTileState();
}

class _QuestionMarkToolTipTileState extends State<QuestionMarkToolTipTile> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: isHovering ? XColors.iconBg : XColors.background,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                widget.iconImage,
                width: 17,
                height: 14,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              const SizedBox(width: 8),
              Text(
                widget.title,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionMarkToolTipWithoutIconTile extends StatefulWidget {
  const QuestionMarkToolTipWithoutIconTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  State<QuestionMarkToolTipWithoutIconTile> createState() =>
      _QuestionMarkToolTipWithoutIconTileState();
}

class _QuestionMarkToolTipWithoutIconTileState
    extends State<QuestionMarkToolTipWithoutIconTile> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: isHovering ? XColors.iconBg : XColors.background,
            borderRadius: BorderRadius.circular(6), // Optional rounded corners
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
