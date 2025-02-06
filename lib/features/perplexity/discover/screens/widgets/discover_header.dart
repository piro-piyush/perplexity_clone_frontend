import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class DiscoverHeader extends StatefulWidget {
  const DiscoverHeader({
    super.key,
  });

  @override
  State<DiscoverHeader> createState() => _DiscoverHeaderState();
}

class _DiscoverHeaderState extends State<DiscoverHeader> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: XSizes.appBarHeightDesktop,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: XColors.searchBarBorder, width: 1))),
      child: Flexible(
        child: Center(
          child: Container(
            width: 1100,
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
      ),
    );
  }
}
