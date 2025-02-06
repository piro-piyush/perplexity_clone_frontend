import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class DiscoverHeader extends StatefulWidget implements PreferredSizeWidget {
  const DiscoverHeader({
    super.key,
  });

  @override
  State<DiscoverHeader> createState() => _DiscoverHeaderState();

  @override
  @override
  Size get preferredSize => Size.fromHeight(XSizes.appBarHeightDesktop);
}

class _DiscoverHeaderState extends State<DiscoverHeader> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: XColors.searchBarBorder, width: 1),
        ),
      ),
      child: Center(
        child: Container(
          width: 1100,
          // Adjust width as needed
          padding: const EdgeInsets.symmetric(horizontal: 32),
          // Padding for the header content
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
              const SizedBox(width: 8), // Space between icon and text
              const Text(
                "Discover",
                style: TextStyle(fontSize: 32, color: XColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
