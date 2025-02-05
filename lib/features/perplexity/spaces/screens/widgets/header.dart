import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class SpacesHeader extends StatefulWidget {
  const SpacesHeader({
    super.key,
  });

  @override
  State<SpacesHeader> createState() => _SpacesHeaderState();
}

class _SpacesHeaderState extends State<SpacesHeader> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: XSizes.appBarHeightDesktop,
      decoration: BoxDecoration(
          color: XColors.background,
          border: Border(
              bottom: BorderSide(color: XColors.searchBarBorder, width: 1))),
      child: Center(
        child: Flexible(
          child: Container(
              width: 768,
              padding: EdgeInsets.only(left: 32, right: 32, top: 16),
              child: Container(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        SvgPicture.asset(
                          XImages.spaces,
                          height: 26,
                          width: 32,
                          colorFilter: ColorFilter.mode(
                            XColors.whiteColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        Text(
                          "Spaces",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHovering = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHovering = false;
                          });
                        },
                        child: Container(
                          // width: 32,
                          // height: 32,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: XColors.iconBg),
                          child: Center(
                            child: Text(
                              "Learn More",
                              style: TextStyle(
                                  color: isHovering
                                      ? XColors.iconGrey
                                      : XColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
