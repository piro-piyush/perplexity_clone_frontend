import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/footer_section.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/home_body.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_searches_buttons.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_section.dart';
import 'package:perplexity_clone/data/services/chat_web_service.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/welcome_dialog.dart';

class HomeDesktopScreen extends StatefulWidget {
  const HomeDesktopScreen({super.key});

  @override
  State<HomeDesktopScreen> createState() => _HomeDesktopScreenState();
}

class _HomeDesktopScreenState extends State<HomeDesktopScreen> {
  bool isLogin = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isLogin) {
        loginPopup(context);
      }
    });
    ChatWebService().connect();
  }

  void loginPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return WelcomeDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 768,
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: HomeBody(),
            ),
          ),
        ),

        // Footer Section
        Positioned(left: 0, right: 0, bottom: 0, child: const FooterSection()),
      ],
    );
  }
}
