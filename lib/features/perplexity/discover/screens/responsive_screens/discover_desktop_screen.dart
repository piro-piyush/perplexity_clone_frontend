import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/features/perplexity/discover/controllers/discover_controller.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/discover_header.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/widgets/side_card.dart';

class DiscoverDesktopScreen extends StatelessWidget {
  const DiscoverDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiscoverController());
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DiscoverHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 162),
              child: Row(
                spacing: 16,
                children: [
                  Column(
                    children: [
                      // Default tab controller
                      // DefaultTabController(
                      //   length: controller.headers.length,
                      //   child: controller.headers
                      //       .map((header) =>
                      //       Container(
                      //         padding: EdgeInsets.all(16),
                      //         child:,
                      //       ))
                      //       .toList(),),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          children: [
                            // here i want to make
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: SideCard(),
                  )
                ],
              ),
            )
          ],
        ),

        // Question Mark Icon
        QuestionMark(),
      ],
    );
  }
}
