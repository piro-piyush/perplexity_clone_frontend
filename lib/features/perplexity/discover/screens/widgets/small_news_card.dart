import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perplexity_clone/features/perplexity/discover/models/news_model.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SmallNewsCard extends StatelessWidget {
  const SmallNewsCard({super.key, required this.model});

  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
          decoration: BoxDecoration(
            color: XColors.searchBar,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                model.imageUrl,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          child: Stack(
            children: [
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        model.title,
                        style: TextStyle(
                          fontSize: 16,
                          color: XColors.whiteColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2),
                      Text(
                        model.content,
                        style: TextStyle(
                          fontSize: 14,
                          color: XColors.iconGrey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage(model.curatedByImage),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
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
      ),
    );
  }
}
