import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/left_side_header.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/middle_side_header.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/widgets/right_side_header.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class AnswerHeader extends StatefulWidget {
  const AnswerHeader({
    super.key,
    required this.header,
  });

  final String header;

  @override
  State<AnswerHeader> createState() => _AnswerHeaderState();
}

class _AnswerHeaderState extends State<AnswerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: XSizes.appBarHeightDesktop,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: XColors.searchBarBorder, width: 1))),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftSideHeader(),
          MiddleSideHeader(header: widget.header),
          RightSideHeader()
        ],
      ),
    );
  }
}
