import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_searches_buttons.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/search_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SearchSection(),
        SizedBox(
          height: 8,
        ),
        SizedBox(height: 16),
        QuickSearchesButtons(),
      ],
    );
  }
}
