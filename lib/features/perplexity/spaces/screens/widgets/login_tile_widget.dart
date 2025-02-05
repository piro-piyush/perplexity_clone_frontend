import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class LoginTileWidget extends StatefulWidget {
  const LoginTileWidget({
    super.key,
    required this.text,
    required this.iconImage,
    required this.onTap,
    this.foregroundColor = XColors.loginHoverColor,
    this.backgroundColor = XColors.whiteColor,
    this.hoverColor = XColors.submitButton,
    this.iconWidth = 20,
    this.iconHeight = 16,
    this.fontSize = 16,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  });

  final String text;
  final String iconImage;
  final VoidCallback onTap;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color hoverColor;
  final double iconWidth;
  final double iconHeight;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  @override
  State<LoginTileWidget> createState() => _LoginTileWidgetState();
}

class _LoginTileWidgetState extends State<LoginTileWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          padding: widget.padding,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              SvgPicture.asset(
                widget.iconImage,
                width: widget.iconWidth,
                height: widget.iconWidth,
                colorFilter: ColorFilter.mode(
                    isHovering ? widget.hoverColor : widget.foregroundColor,
                    BlendMode.srcIn),
              ),
              Flexible(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.fontSize,
                    color:
                        isHovering ? widget.hoverColor : widget.foregroundColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
