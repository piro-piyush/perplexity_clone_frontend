import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SideIndicator extends StatelessWidget {
  const SideIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        color: XColors.whiteColor,
        height: 40,
        width: 2,
      ),
    );
  }
}
