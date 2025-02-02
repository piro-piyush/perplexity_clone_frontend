import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/right_side_bar_button.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SideSectionChat extends StatelessWidget {
  const SideSectionChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        children: [
          RightSideBarButton(
            image: XImages.image,
            text: "Search Images",
          ),
          SizedBox(
            height: 8,
          ),
          RightSideBarButton(
            image: XImages.video,
            text: "Search Videos",
          ),
          SizedBox(
            height: 8,
          ),
          RightSideBarButton(
            image: XImages.genImage,
            text: "Generate Image",
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
