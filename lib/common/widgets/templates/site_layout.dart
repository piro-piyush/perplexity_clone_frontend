import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/responsive/responsive_design.dart';
import 'package:perplexity_clone/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:perplexity_clone/common/widgets/responsive/screens/mobile_layout.dart';
import 'package:perplexity_clone/common/widgets/responsive/screens/tablet_layout.dart';

// Template for the overall site layout , responsive to different screen sizes
class XSiteTemplate extends StatelessWidget {
  const XSiteTemplate(
      {super.key,
      this.desktop,
      this.tablet,
      this.mobile,
      this.header,
      this.useLayout = true});

  // Widget for desktop layout
  final Widget? desktop;

  // Widget for tablet layout
  final Widget? tablet;

  // Widget for mobile layout
  final Widget? mobile;

  // Widget for header
  final Widget? header;

  // Flag to determine whether to use the layout
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: XResponsiveWidget(
      desktop: useLayout
          ? DesktopLayout(
              body: desktop,
            )
          : desktop ?? Container(),
      tablet: useLayout
          ? TabletLayout(
              body: tablet ?? desktop,
            )
          : tablet ?? desktop ?? Container(),
      mobile: useLayout
          ? MobileLayout(
              body: mobile ?? desktop,
            )
          : mobile ?? desktop ?? Container(),
    ));
  }
}
