import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class IconWithHoverEffect extends StatefulWidget {
  const IconWithHoverEffect({
    super.key,
    required this.iconImage,
    required this.onTap,
    this.text,
  });

  final String iconImage;
  final String? text;
  final VoidCallback onTap;

  @override
  State<IconWithHoverEffect> createState() => _IconWithHoverEffectState();
}

class _IconWithHoverEffectState extends State<IconWithHoverEffect> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    Widget iconContainer = Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: isHovering ? XColors.iconBg : Colors.transparent,
      ),
      child: Center(
        child: SvgPicture.asset(
          widget.iconImage,
          colorFilter: ColorFilter.mode(XColors.iconGrey, BlendMode.srcIn),
          height: 14,
          width: 17,
        ),
      ),
    );

    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovering = true),
        onExit: (_) => setState(() => isHovering = false),
        child: widget.text != null && widget.text!.isNotEmpty
            ? Tooltip(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                message: widget.text!,
                verticalOffset: 30,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: XColors.iconBg,
                  borderRadius: BorderRadius.circular(4),
                ),
                waitDuration: const Duration(milliseconds: 100),
                child: iconContainer,
              )
            : iconContainer,
      ),
    );
  }
}
