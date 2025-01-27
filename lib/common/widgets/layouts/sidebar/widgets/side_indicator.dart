import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SideIndicator extends StatelessWidget {
  const SideIndicator({
    super.key,
    this.height = 40,
    this.width = 3,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        color: XColors.whiteColor,
        height: height,
        width: width,
      ),
    );
  }
}
