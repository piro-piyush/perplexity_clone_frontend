import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/responsive_screens/home_desktop_screen.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/responsive_screens/home_mobile_screen.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/responsive_screens/home_tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(
      desktop: HomeDesktopScreen(),
      tablet: HomeTabletScreen(),
      mobile: HomeMobileScreen(),
    );
  }
}
