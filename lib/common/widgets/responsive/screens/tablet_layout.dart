import 'package:flutter/material.dart';
import 'package:perplexity_clone/common/widgets/layouts/sidebar/sidebar.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Expanded(child: ),
          SideBar(),
          Expanded(
              // flex: 5,
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
