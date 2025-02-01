import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SideCardOptions extends StatelessWidget {
  final String iconImage;
  final String heading;

  const SideCardOptions(
      {super.key, required this.iconImage, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          color: Color(0xFF144149).withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Color(0xFF154C56).withValues(alpha: 0.2))),
      child: Row(
        spacing: 4,
        children: [
          SvgPicture.asset(
            iconImage,
            width: 17,
            height: 14,
            colorFilter: ColorFilter.mode(
              XColors.whiteColor,
              BlendMode.srcIn,
            ),
          ),
          Text(
            heading,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
