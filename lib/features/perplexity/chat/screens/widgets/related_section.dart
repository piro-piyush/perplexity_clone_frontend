import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/related_section_tile.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class RelatedSection extends StatelessWidget {
  const RelatedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: XColors.iconGrey, width: 0.1))),
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                SvgPicture.asset(
                  XImages.related,
                  colorFilter: ColorFilter.mode(
                    XColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                  height: 18,
                  width: 22,
                ),
                SizedBox(width: 8),
                Text(
                  "Related",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          RelatedSectionTile(
            title: "What are the best place to visit in Delhi in February 2025",
          ),
          RelatedSectionTile(
            title:
            "Which neighborhoods in Delhi are known for their cultural events",
          ),
          RelatedSectionTile(
            title:
            "Are there any unique markets or bazaars in Delhi worth exploring",
          ),
          RelatedSectionTile(
            title:
            "What are some must-attend literary events in Delhi this year",
          ),
          RelatedSectionTile(
            title:
            "Can you recommend any family-friendly events in Delhi in February 2025",
          ),
        ],
      ),
    );
  }
}