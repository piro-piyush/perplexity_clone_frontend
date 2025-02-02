import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class RightSideBarButton extends StatelessWidget {
  final String image;
  final String text;

  const RightSideBarButton({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8,
          ),
          border: Border.all(
              style: BorderStyle.solid, color: XColors.iconGrey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                image,
                width: 17,
                height: 14,
                colorFilter: ColorFilter.mode(
                  XColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 9),
              Text(
                text,
                style: const TextStyle(color: XColors.whiteColor),
              ),
            ],
          ),
          const Icon(
            Icons.add,
            color: XColors.submitButton,
          ),
        ],
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = XColors.iconGrey
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final double dashWidth = 4;
    final double dashSpace = 2;
    double startX = 0;

    // Draw top border
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    startX = 0;
    // Draw bottom border
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height),
        Offset(startX + dashWidth, size.height),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    double startY = 0;
    // Draw left border
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }

    startY = 0;
    // Draw right border
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width, startY),
        Offset(size.width, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
