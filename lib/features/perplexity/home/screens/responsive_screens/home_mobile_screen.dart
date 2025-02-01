import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_searches_buttons.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_section.dart';
import 'package:perplexity_clone/data/services/chat_web_service.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  bool isHoveringQuestionMark = false;

  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            height: 69,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: XColors.searchBarBorder, // Grey border at the bottom
                  width: 0.8, // Border thickness
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                    XImages.cyanLogoWithWhiteText),
              ],
            ),
          ),
          // Search Section
          SizedBox(
            height: 30,
          ),
          const SearchSection(),
          const SizedBox(height: 16),
          const QuickSearchesButtons(),
        ],
      ),
    );
  }
}
