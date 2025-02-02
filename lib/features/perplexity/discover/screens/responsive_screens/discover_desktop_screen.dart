import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/discover_header.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_child.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_widget.dart';

class DiscoverDesktopScreen extends StatelessWidget {
  const DiscoverDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DiscoverHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 162),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Stack(
                        children: [
                      SizedBox(
                          width: 674,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 64.0),
                            // Tab Bar child is very long i want that it can scroll
                            child: TabBarChild(),
                          )),
                      // **Tab Bar (Fixed Height, No Expanded)**
                      TabBarWidget(),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: SideCard(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Question Mark Icon
        QuestionMark(),
      ],
    );
  }
}
