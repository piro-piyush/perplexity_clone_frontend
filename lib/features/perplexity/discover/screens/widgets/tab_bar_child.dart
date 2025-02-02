import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/features/perplexity/discover/controllers/discover_controller.dart';
import 'package:perplexity_clone/features/perplexity/discover/models/news_model.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/big_news_card.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/small_news_card.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TabBarChild extends StatelessWidget {
  const TabBarChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiscoverController());
    return Column(
      children: [
        Skeletonizer(
          effect: ShimmerEffect(
            baseColor: XColors.searchBar,
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            highlightColor: XColors.background,
          ),
          enabled: true,
          child: Column(
            spacing: 16,
            children: [
              BigNewsCard(model: NewsModel.dummyNews[0]),
              Row(
                spacing: 16,
                children: [
                  SmallNewsCard(model: NewsModel.dummyNews[1]),
                  SmallNewsCard(model: NewsModel.dummyNews[2]),
                  SmallNewsCard(model: NewsModel.dummyNews[3]),
                ],
              ),
              BigNewsCard(model: NewsModel.dummyNews[0]),
              Row(
                spacing: 16,
                children: [
                  SmallNewsCard(model: NewsModel.dummyNews[1]),
                  SmallNewsCard(model: NewsModel.dummyNews[2]),
                  SmallNewsCard(model: NewsModel.dummyNews[3]),
                ],
              ),
              BigNewsCard(model: NewsModel.dummyNews[0]),
              Row(
                spacing: 16,
                children: [
                  SmallNewsCard(model: NewsModel.dummyNews[1]),
                  SmallNewsCard(model: NewsModel.dummyNews[2]),
                  SmallNewsCard(model: NewsModel.dummyNews[3]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
