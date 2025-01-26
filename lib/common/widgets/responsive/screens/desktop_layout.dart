import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

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
              child: body ?? SizedBox(),
            )),
          ],
        ),
      ),
    );
  }
}
