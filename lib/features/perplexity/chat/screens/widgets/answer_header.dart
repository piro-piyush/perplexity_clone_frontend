import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class AnswerHeader extends StatefulWidget {
  const AnswerHeader({
    super.key,
  });

  @override
  State<AnswerHeader> createState() => _AnswerHeaderState();
}

class _AnswerHeaderState extends State<AnswerHeader> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: XColors.searchBarBorder, width: 1))),
      padding: EdgeInsets.symmetric(horizontal: 162),
      child: Padding(
          padding: EdgeInsets.only(left: 32, right: 32, top: 16),
          child: Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Row(
              spacing: 8,
              children: [
                SvgPicture.asset(
                  XImages.discover,
                  height: 26,
                  width: 32,
                  colorFilter: ColorFilter.mode(
                    XColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  "Discover",
                  style: TextStyle(fontSize: 32),
                ),
              ],
            ),
          )),
    );
  }
}
