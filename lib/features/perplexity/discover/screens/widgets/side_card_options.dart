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
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(32, 184, 205, 0.1),
        borderRadius: BorderRadius.circular(6),
        border:
            Border.all(color: Color.fromRGBO(32, 184, 205, 0.1).withValues(alpha: 0.1), width: 0.1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
