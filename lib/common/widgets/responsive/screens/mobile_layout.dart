import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // drawer: TSidebar(),
      // appBar: THeader(
      //   scaffoldKey: scaffoldKey,
      // ),
      body: body ?? SizedBox(),
    );
  }
}
