import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class LeftSideHeader extends StatelessWidget {
  const LeftSideHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Row(
          spacing: 4,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/4f4b3c97-d701-4098-6b32-23e4fe95cd00/thumbnail"))),
            ),
            Text(
              "user@gmail.com",
              style: TextStyle(color: XColors.whiteColor, fontSize: 12),
            )
          ],
        ),
        Row(
          spacing: 4,
          children: [
            SvgPicture.asset(
              XImages.time,
              width: 10,
              height: 10,
              colorFilter: ColorFilter.mode(XColors.iconGrey, BlendMode.srcIn),
            ),
            Text(
              "12m",
              style: TextStyle(color: XColors.whiteColor, fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
