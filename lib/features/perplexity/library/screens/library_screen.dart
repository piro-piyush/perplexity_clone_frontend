import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/login/login_suggestion.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/responsive_screens/library_desktop_screen.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/responsive_screens/library_mobile_screen.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/header.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    return isLogin
        ? XSiteTemplate(
      header: LibraryHeader(),
            desktop: LibraryDesktopScreen(),
            mobile: LibraryMobileScreen(),
          )
        : LoginSuggestion(
            headerText: "Organize your search history by signing up",
          );
  }
}
