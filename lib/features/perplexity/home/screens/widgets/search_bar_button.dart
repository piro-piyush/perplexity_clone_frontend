import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;

  const SearchBarButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isHovered ? XColors.proButton : Colors.transparent,
        ),
        child: Row(

          children: [
            Icon(
              widget.icon,
              color: XColors.iconGrey,
              size: 20,
            ),
            const SizedBox(width: 4),
            Text(
              widget.text,
              style: TextStyle(
                color: XColors.textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
