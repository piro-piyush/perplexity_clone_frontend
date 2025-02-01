import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class ThreadsSideIcon extends StatefulWidget {
  const ThreadsSideIcon({
    super.key,
    required this.iconImage,
    required this.onTap,
  });

  final String iconImage;
  final VoidCallback onTap;

  @override
  State<ThreadsSideIcon> createState() => _ThreadsSideIconState();
}

class _ThreadsSideIconState extends State<ThreadsSideIcon> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovering = false;
          });
        },
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: XColors.iconBg),
          child: Center(
            child: SvgPicture.asset(
              widget.iconImage,
              colorFilter: ColorFilter.mode(
                  isHovering ? XColors.iconGrey : XColors.whiteColor,
                  BlendMode.srcIn),
              height: 14,
              width: 17,
            ),
          ),
        ),
      ),
    );
  }
}
