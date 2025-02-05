import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class HoverLoginOptions extends StatefulWidget {
  const HoverLoginOptions({
    super.key,
    required this.onTap,
  });

  @override
  State<HoverLoginOptions> createState() => _HoverLoginOptionsState();
  final VoidCallback onTap;
}

class _HoverLoginOptionsState extends State<HoverLoginOptions> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              color: isHovering ? XColors.iconBg : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Text(
                  "See all options (Apple, SSO)",
                  style: TextStyle(
                      color: isHovering ? Colors.white : XColors.iconGrey),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  weight: 10,
                  size: 10,
                  color: isHovering ? Colors.white : XColors.iconGrey,
                )
              ],
            )),
      ),
    );
  }
}
