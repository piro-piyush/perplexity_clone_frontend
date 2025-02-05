import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/hover_icon.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card_options.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/icon_with_hover_effect.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideCard extends StatefulWidget {
  const SideCard({super.key});

  @override
  State<SideCard> createState() => _SideCardState();
}

class _SideCardState extends State<SideCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 313,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF13343B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Make it yours"),
                      HoverIcon(
                        iconImage: XImages.close,
                        onTap: () {},
                        iconColor: XColors.iconGrey,
                        iconWidth: 14,
                        iconHeight: 12,
                        hoverIconColor: Colors.white,
                        backgroundColor: Color(0xFF2D2F2F),
                        size: 24,
                      )
                    ],
                  ),
                  Text(
                    "Select topics and interests to customize your Discover experience",
                    style: TextStyle(
                      color: XColors.iconGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SideCardOptions(
                      heading: "Tech & Science", iconImage: XImages.ai),
                  SizedBox(width: 8),
                  SideCardOptions(
                      heading: "Finance", iconImage: XImages.dollar),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SideCardOptions(
                      heading: "Arts & Culture", iconImage: XImages.art),
                  SizedBox(width: 8),
                  SideCardOptions(heading: "Sports", iconImage: XImages.sports),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SideCardOptions(
                      heading: "Entertainment",
                      iconImage: XImages.entertainment),
                ],
              ),
            ],
          ),
          Divider(thickness: 0.1, color: XColors.iconGrey),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: XColors.submitButton,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Text(
                "Save Interests",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
