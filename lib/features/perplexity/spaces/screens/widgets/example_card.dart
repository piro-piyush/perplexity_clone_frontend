import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class ExampleCard extends StatefulWidget {
  final String text;
  final String emogi;

  const ExampleCard({
    super.key,
    required this.text,
    required this.emogi,
  });

  @override
  State<ExampleCard> createState() => _ExampleCardState();
}

class _ExampleCardState extends State<ExampleCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isHovering ? XColors.iconBg : XColors.searchBar,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHovering
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: XColors.iconBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    widget.emogi,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                widget.text,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  SvgPicture.asset(
                    XImages.time,
                    height: 10,
                    width: 10,
                    colorFilter: ColorFilter.mode(
                      XColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Now",
                    style: TextStyle(fontSize: 12, color: XColors.iconGrey),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: XColors.iconGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        XImages.private,
                        height: 12,
                        width: 10,
                        colorFilter: ColorFilter.mode(
                          XColors.iconGrey,
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Private",
                        style: TextStyle(fontSize: 10, color: XColors.iconGrey),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
