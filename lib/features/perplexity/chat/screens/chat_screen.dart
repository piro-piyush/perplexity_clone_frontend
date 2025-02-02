import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/templates/site_layout.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/responsive_screens/chat_desktop_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final question = Get.arguments ?? "Question Not available";
    return XSiteTemplate(
      desktop: ChatDesktopScreen(
        question: question,
      ),
    );
  }
}
