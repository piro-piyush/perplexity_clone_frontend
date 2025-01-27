import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/bottom_navigation_bar/bottom_navigation_bar.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: body ?? SizedBox(),
      ),
    );
  }
}
