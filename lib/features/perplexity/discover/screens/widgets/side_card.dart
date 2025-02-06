import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/hover_icon.dart';
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
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF13343B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Title and Close Icon with Space Between
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Make it yours",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                HoverIcon(
                  iconImage: XImages.close,
                  onTap: () {},
                  iconColor: XColors.iconGrey,
                  iconWidth: 14,
                  iconHeight: 12,
                  hoverIconColor: Colors.white,
                  backgroundColor: Color(0xFF2D2F2F),
                  size: 24,
                ),
              ],
            ),
            SizedBox(height: 8),

            /// Subtitle with Proper Wrapping
            Text(
              "Select topics and interests to customize your Discover experience",
              style: TextStyle(
                color: XColors.iconGrey,
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
              softWrap: true,
              maxLines: null,
            ),
            SizedBox(height: 16),

            /// Wrap for Options with Spacing
            Wrap(
              spacing: 8, // Horizontal spacing
              runSpacing: 8, // Vertical spacing
              children: [
                SideCardOptions(
                    heading: "Tech & Science", iconImage: XImages.ai),
                SideCardOptions(heading: "Finance", iconImage: XImages.dollar),
                SideCardOptions(
                    heading: "Arts & Culture", iconImage: XImages.art),
                SideCardOptions(heading: "Sports", iconImage: XImages.sports),
                SideCardOptions(
                    heading: "Entertainment", iconImage: XImages.entertainment),
              ],
            ),
            SizedBox(height: 8),

            Divider(thickness: 0.1, color: XColors.iconGrey),
            SizedBox(height: 8),

            /// Save Button
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
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
