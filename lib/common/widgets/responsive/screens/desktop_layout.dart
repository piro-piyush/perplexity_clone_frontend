import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Expanded(child: ),
          SideBar(),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  // Header
                  // THeader(),

                  // Body
                  Expanded(child: body ?? SizedBox()),
                ],
              ))
        ],
      ),
    );
  }
}
