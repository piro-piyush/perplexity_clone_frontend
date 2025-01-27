import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class FooterButton extends StatefulWidget {
  const FooterButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<FooterButton> createState() => _FooterButtonState();
}

class _FooterButtonState extends State<FooterButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 14,
            color: XColors.footerGrey,
            fontWeight: FontWeight.w600,
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
            decorationColor: XColors.footerGrey,
          ),
        ),
      ),
    );
  }
}
