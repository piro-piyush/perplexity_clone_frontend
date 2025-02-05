import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/login/login_suggestion.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/responsive_screens/spaces_desktop_screen.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/responsive_screens/spaces_mobile_screen.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/header.dart';

class SpacesScreen extends StatelessWidget {
  const SpacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    return isLogin
        ? XSiteTemplate(
            header: SpacesHeader(),
            desktop: SpacesDesktopScreen(),
            mobile: SpacesMobileScreen(),
          )
        : LoginSuggestion(
            headerText: "Focus your Perplexity experience in Spaces",
          );
  }
}
