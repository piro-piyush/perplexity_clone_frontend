import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class TextWithHoverEffect extends StatefulWidget {
  const TextWithHoverEffect({
    super.key,
    required this.text,
    this.color = XColors.iconGrey,
    this.hoverColor = XColors.whiteColor,
    this.fontSize = 16,
    required this.onTap,
  });

  final String text;
  final Color color;
  final Color hoverColor;
  final double fontSize;
  final VoidCallback onTap;

  @override
  State<TextWithHoverEffect> createState() => _TextWithHoverEffectState();
}

class _TextWithHoverEffectState extends State<TextWithHoverEffect> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.fontSize,
              color: isHovering ? widget.hoverColor : widget.color),
        ),
      ),
    );
  }
}
