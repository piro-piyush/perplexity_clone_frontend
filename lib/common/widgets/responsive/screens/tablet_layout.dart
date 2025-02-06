import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.sideNav,
      body: Padding(
        padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
        child: Row(
          children: [
            // Ensure SideBar has a fixed width
            SideBar(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: XColors.background,
                  border: Border.all(
                    color: XColors.iconGrey,
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(XSizes.cardRadiusSm),
                ),
                child: Stack(
                  children: [
                    // Body content positioned below the header
                    SizedBox(),
                    body ?? SizedBox(),

                    // Ensure QuestionMark is positioned correctly
                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: QuestionMark(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
