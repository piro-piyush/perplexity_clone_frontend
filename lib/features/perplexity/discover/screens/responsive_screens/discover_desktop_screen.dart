import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/discover_body.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/discover_header.dart';

class DiscoverDesktopScreen extends StatelessWidget {
  const DiscoverDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DiscoverHeader(),
      body: Center(
        child: SizedBox(
          width: 1100,
          child: DiscoverBody(),
        ),
      ),
    );
  }
}
