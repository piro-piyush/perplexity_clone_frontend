import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card_options.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideCard extends StatelessWidget {
  const SideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF13343B),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all()
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
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  )),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Icon(
                    Icons.close,
                    size: 12,
                    color: XColors.iconGrey,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Row(
                spacing: 8,
                children: [
                  SideCardOptions(
                    heading: "Tech & Science",
                    iconImage: XImages.ai,
                  ),
                  SideCardOptions(
                    heading: "Finance",
                    iconImage: XImages.dollar,
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  SideCardOptions(
                    heading: "Arts & Culture",
                    iconImage: XImages.art,
                  ),
                  SideCardOptions(
                    heading: "Sports",
                    iconImage: XImages.sports,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SideCardOptions(
                    heading: "Entertainment",
                    iconImage: XImages.entertainment,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            thickness: 0.1,
            color: XColors.iconGrey,
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: XColors.submitButton,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  "Save Interests",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
