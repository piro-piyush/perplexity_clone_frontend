import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class OptionsWidget extends StatelessWidget {
  final String header;
  final String iconImage;
  final String body;

  const OptionsWidget({
    super.key,
    required this.header,
    required this.iconImage,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          iconImage,
          height: 24,
          colorFilter: ColorFilter.mode(
            XColors.whiteColor,
            BlendMode.srcIn,
          ),
        ),
        Text(
          header,
          style: TextStyle(color: XColors.whiteColor, fontSize: 18),
        ),
        Text(
          body,
          style: TextStyle(color: XColors.iconGrey, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
