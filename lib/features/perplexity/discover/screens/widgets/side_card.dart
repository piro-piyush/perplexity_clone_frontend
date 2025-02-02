import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card_options.dart';
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
      width: 313,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF13343B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 257,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Make it yours"),
                    Text(
                      "Select topics and interests to customize your Discover experience",
                      style: TextStyle(
                        color: XColors.iconGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
              MouseRegion(
                onEnter: (_) => setState(() => isHover = true),
                onExit: (_) => setState(() => isHover = false),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  // Smooth transition
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isHover ? Color(0xFF2D2F2F) : Color(0xFF13343B),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      size: 12,
                      color: isHover ? XColors.whiteColor : XColors.iconGrey,
                    ),
                  ),
                ),
              )
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
