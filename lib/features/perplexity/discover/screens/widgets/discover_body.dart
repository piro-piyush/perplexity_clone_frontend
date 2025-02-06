import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_child.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/tab_bar_widget.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Top Bar with TabBarWidget
        SizedBox(
          height: 64,
          child: Row(
            spacing: !XDeviceUtils.isMobileScreen(context) ? 16 : 0,
            children: [
              Expanded(
                flex: 2,
                child: TabBarWidget(),
              ),
              if (!XDeviceUtils.isMobileScreen(context))
                Expanded(
                  child: Container(),
                ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: !XDeviceUtils.isMobileScreen(context) ? 32.0 : 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: !XDeviceUtils.isMobileScreen(context) ? 48 : 0,
            children: [
              /// Main Content with Scrolling Support
              Expanded(
                flex: 2,
                child: TabBarChild(),
              ),
              if (!XDeviceUtils.isMobileScreen(context))
                Expanded(
                  child: SideCard(),
                )
            ],
          ),
        ),
      ],
    );
  }
}
