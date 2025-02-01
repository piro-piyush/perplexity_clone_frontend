import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/library/models/thread_model.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/icon_with_hover_effect.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class ThreadCard extends StatefulWidget {
  final ThreadModel threadModel;

  const ThreadCard({
    super.key,
    required this.threadModel,
  });

  @override
  State<ThreadCard> createState() => _ThreadCardState();
}

class _ThreadCardState extends State<ThreadCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
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
            child: Text(
              widget.threadModel.title,
              style: TextStyle(
                color: isHovering ? XColors.submitButton : XColors.whiteColor,
                fontSize: 16, // Ensure the font size is consistent
                fontWeight: FontWeight.bold, // Optional for emphasis
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            widget.threadModel.content,
            style: TextStyle(fontSize: 14, color: XColors.iconGrey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 4,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 12,
                    color: XColors.iconGrey,
                  ),
                  Text(
                    widget.threadModel.timeAgo,
                    style: TextStyle(fontSize: 12, color: XColors.iconGrey),
                  )
                ],
              ),
              Row(
                children: [
                  IconWithHoverEffect(
                    onTap: () {},
                    iconImage: XImages.add,
                    text: 'Add to space',
                  ),
                  IconWithHoverEffect(
                    onTap: () {},
                    iconImage: XImages.options,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
