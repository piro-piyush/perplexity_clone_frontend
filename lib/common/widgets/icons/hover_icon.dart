import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class HoverIcon extends StatefulWidget {
  const HoverIcon({
    super.key,
    this.iconWidth = 17,
    this.iconHeight = 14,
    this.size = 32,
    this.iconColor = XColors.iconGrey,
    this.hoverIconColor = XColors.whiteColor,
    this.backgroundColor = XColors.iconBg,
    required this.iconImage,
    required this.onTap,
  });

  final String iconImage;
  final double iconWidth;
  final double iconHeight;
  final double size;
  final Color iconColor;
  final Color hoverIconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: isHovering ? widget.backgroundColor : Colors.transparent,
            borderRadius: BorderRadius.circular(widget.size),
          ),
          child: Center(
            child: SvgPicture.asset(
              widget.iconImage,
              width: widget.iconWidth,
              height: widget.iconHeight,
              colorFilter: ColorFilter.mode(
                isHovering ? widget.hoverIconColor : widget.iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
