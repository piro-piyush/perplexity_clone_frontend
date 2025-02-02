import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class RelatedSectionTile extends StatefulWidget {
  const RelatedSectionTile({
    super.key,
    required this.title,
  });

  @override
  State<RelatedSectionTile> createState() => _RelatedSectionTileState();
  final String title;
}

class _RelatedSectionTileState extends State<RelatedSectionTile> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: XColors.iconGrey, width: 0.1))),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            onEnter: (event) => setState(() => isHovering = true),
            onExit: (event) => setState(() => isHovering = false),
            child: Text(
              widget.title,
              style: TextStyle(
                  color:
                      isHovering ? XColors.submitButton : XColors.whiteColor),
            ),
          ),
          SvgPicture.asset(
            XImages.add,
            width: 20,
            height: 16,
            colorFilter:
                ColorFilter.mode(XColors.submitButton, BlendMode.srcIn),
          )
        ],
      ),
    );
  }
}
