import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_child.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_widget.dart';

class DiscoverDesktopScreen extends StatelessWidget {
  const DiscoverDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flexible(
        child: SizedBox(
          width: 1100,
          child: DiscoverBody(),
        ),
      ),
    );
  }
}

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 64),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 48,
            children: [
              Expanded(
                flex: 2,
                child: TabBarChild(),
              ),
              Expanded(
                child: SideCard(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
          child: Row(
            spacing: 16,
            children: [
              Expanded(flex: 2, child: TabBarWidget()),
              Expanded(child: Container())
            ],
          ),
        ),
      ],
    );
  }
}
