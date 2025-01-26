import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/personalization/settings/screens/responsive_screens/settings_desktop_screen.dart';
import 'package:perplexity_clone/features/personalization/settings/screens/responsive_screens/settings_mobile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return XSiteTemplate(
      desktop: SettingsDesktopScreen(),
      mobile: SettingsMobileScreen(),
    );
  }
}
