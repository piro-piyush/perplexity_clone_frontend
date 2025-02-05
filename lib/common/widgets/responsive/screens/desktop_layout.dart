import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body, this.header});

  final Widget? header;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.sideNav,
      body: Padding(
        padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
        child: Row(
          children: [
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
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: body ?? SizedBox(),
                  ),
                  header ?? SizedBox(),
                  // Question Mark Icon
                  QuestionMark(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
