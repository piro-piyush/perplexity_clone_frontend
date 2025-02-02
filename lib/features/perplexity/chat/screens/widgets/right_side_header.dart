import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class RightSideHeader extends StatefulWidget {
  const RightSideHeader({
    super.key,
  });

  @override
  State<RightSideHeader> createState() => _RightSideHeaderState();
}

class _RightSideHeaderState extends State<RightSideHeader> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        MouseRegion(
          onEnter: (event) => setState(() {
            isHovering = true;
          }),
          onExit: (event) => setState(() {
            isHovering = false;
          }),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isHovering ? XColors.iconBg : Colors.transparent),
            child: Center(
              child: SvgPicture.asset(
                XImages.options,
                width: 17,
                height: 14,
                colorFilter: ColorFilter.mode(
                    isHovering ? XColors.whiteColor : XColors.iconGrey,
                    BlendMode.srcIn),
              ),
            ),
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: XColors.iconGrey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: SvgPicture.asset(
              XImages.bookmark,
              width: 17,
              height: 14,
              colorFilter: ColorFilter.mode(
                  isHovering ? XColors.whiteColor : XColors.iconGrey,
                  BlendMode.srcIn),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: XColors.submitButton,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            spacing: 8,
            children: [
              SvgPicture.asset(
                XImages.private,
                width: 17,
                height: 14,
                colorFilter:
                    ColorFilter.mode(XColors.background, BlendMode.srcIn),
              ),
              Text(
                "Share",
                style: TextStyle(fontSize: 14, color: Colors.black),
              )
            ],
          ),
        )
      ],
    );
  }
}
