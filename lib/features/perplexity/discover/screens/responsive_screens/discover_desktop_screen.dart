import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_child.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_widget.dart';

class DiscoverDesktopScreen extends StatelessWidget {
  const DiscoverDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: 1200,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Row(
                      spacing: 48,
                      children: [
                        TabBarChild(),
                        SideCard(),
                      ],
                    ),
                  ),
                  // **Tab Bar (Fixed Height, No Expanded)**
                  SizedBox(height: 64, child: TabBarWidget()),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
