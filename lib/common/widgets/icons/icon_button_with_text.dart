import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class IconButtonWithText extends StatefulWidget {
  const IconButtonWithText({
    super.key,
    this.iconWidth = 17,
    this.iconHeight = 14,
    this.radius = 32,
    this.iconColor = XColors.iconGrey,
    this.hoverIconColor = XColors.whiteColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    required this.iconImage,
    required this.label,
    required this.onTap,
  });

  final String label;
  final String iconImage;
  final double iconWidth;
  final double iconHeight;
  final double radius;
  final Color iconColor;
  final Color hoverIconColor;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  @override
  State<IconButtonWithText> createState() => _IconButtonWithTextState();
}

class _IconButtonWithTextState extends State<IconButtonWithText> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isHovering ? XColors.iconBg : Colors.transparent,
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          padding: widget.padding,
          child: Row(
            mainAxisSize: MainAxisSize.min, // Ensure it wraps content
            children: [
              SvgPicture.asset(
                widget.iconImage,
                width: widget.iconWidth,
                height: widget.iconHeight,
                colorFilter: ColorFilter.mode(
                  isHovering ? widget.hoverIconColor : widget.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 8), // Correct spacing between icon and text
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 14,
                  color: isHovering ? widget.hoverIconColor : widget.iconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
