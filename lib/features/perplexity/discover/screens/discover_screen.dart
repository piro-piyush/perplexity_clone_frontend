import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/responsive_screens/discover_desktop_screen.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/responsive_screens/discover_mobile_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return XSiteTemplate(
      desktop: DiscoverDesktopScreen(),
      mobile: DiscoverMobileScreen(),
    );
  }
}
