import 'package:flutter/material.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

// Widget for displaying layouts based on screen size
class XResponsiveWidget extends StatelessWidget {
  const XResponsiveWidget(
      {super.key,
        required this.desktop,
        required this.tablet,
        required this.mobile});

  // Widget for desktop layout
  final Widget desktop;

  // Widget for tablet layout
  final Widget tablet;

  // Widget for mobile layout
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= XSizes.desktopScreenSize) {
        return desktop;
      } else if (constraints.maxWidth < XSizes.desktopScreenSize &&
          constraints.maxWidth >= XSizes.tabletScreenSize) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
