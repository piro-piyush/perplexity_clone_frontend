import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class QuickSearchContainer extends StatefulWidget {
  const QuickSearchContainer({
    super.key,
    required this.headerEmogi,
    required this.content,
  });

  final String headerEmogi;
  final String content;

  @override
  State<QuickSearchContainer> createState() => _QuickSearchContainerState();
}

class _QuickSearchContainerState extends State<QuickSearchContainer> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(XRoutes.chat, arguments: widget.content),
      onHover: (hover) {
        setState(() {
          isHover = hover; // Update hover state
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isHover ? XColors.searchBar : Colors.transparent,
          // Hover effect
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: XColors.iconGrey,
              width: 0.5), // Slightly more visible border
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: XColors.searchBar, // Updated background color
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                widget.headerEmogi,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.content,
                style: const TextStyle(
                  color: XColors.whiteColor,
                  fontSize: 14, // Adjust font size for consistency
                ),
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis, // Prevent overflow for long text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
