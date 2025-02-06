import 'package:flutter/material.dart';
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
    return Skeletonizer(
      effect: ShimmerEffect(
        baseColor: XColors.searchBar,
        highlightColor: XColors.background,
      ),
      enabled: false,
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            BigNewsCard(model: NewsModel.dummyNews[0]),
            Row(
              spacing: 16,
              children: [
                Expanded(child: SmallNewsCard(model: NewsModel.dummyNews[1])),
                Expanded(child: SmallNewsCard(model: NewsModel.dummyNews[0])),
                Expanded(child: SmallNewsCard(model: NewsModel.dummyNews[2])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
