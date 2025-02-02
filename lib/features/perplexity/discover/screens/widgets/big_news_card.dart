import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/features/perplexity/discover/models/news_model.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BigNewsCard extends StatelessWidget {
  const BigNewsCard({
    super.key,
    required this.model,
  });

  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: Container(
        decoration: BoxDecoration(
            color: XColors.searchBar, borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: model.imageUrl,
                fit: BoxFit.contain,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                // Placeholder while loading
                errorWidget: (context, url, error) =>
                    Icon(Icons.error), // Error widget in case of a failure
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: XColors.searchBar,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border.all(
                        color: XColors.searchBarBorder, width: 0.5)),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: XColors.whiteColor,
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      model.content,
                      style: TextStyle(
                        fontSize: 14,
                        color: XColors.iconGrey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 4,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            model.curatedByImage))),
                              ),
                              Text(
                                model.curatedBy,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: XColors.iconGrey,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(),
                            child: Center(
                              child: SvgPicture.asset(
                                XImages.bookmark,
                                width: 17,
                                height: 14,
                                colorFilter: ColorFilter.mode(
                                  XColors.iconGrey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
