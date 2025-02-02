import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class MiddleSideHeader extends StatelessWidget {
  const MiddleSideHeader({
    super.key,
    required this.header,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            spacing: 4,
            children: [
              SvgPicture.asset(
                XImages.add,
                width: 10,
                height: 12,
                colorFilter:
                    ColorFilter.mode(XColors.iconGrey, BlendMode.srcIn),
              ),
              Text(
                "Space",
                style: TextStyle(fontSize: 12, color: XColors.iconGrey),
              ),
            ],
          ),
        ),
        Text("/"),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: SizedBox(
            width: 387,
            child: Text(
              header,
              style: TextStyle(fontSize: 12, color: XColors.whiteColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
