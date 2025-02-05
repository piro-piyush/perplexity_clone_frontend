import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/example_card.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/options_widget.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class SpacesDesktopScreen extends StatelessWidget {
  const SpacesDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: SizedBox(
          width: 768,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 24,
              children: [
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "My Spaces",
                    style: TextStyle(fontSize: 18, color: XColors.whiteColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: XColors.searchBar,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 16,
                          children: [
                            OptionsWidget(
                              iconImage: XImages.files,
                              header: "Upload Files",
                              body:
                                  "Upload your documents and Perplexity will answer detailed questions",
                            ),
                            OptionsWidget(
                              iconImage: XImages.instructions,
                              header: "Set AI Instructions",
                              body:
                                  "Convert complex material into easy-to-understand formats like FAQs or Briefing Docs",
                            ),
                            OptionsWidget(
                              iconImage: XImages.spaces,
                              header: "Upload Files",
                              body:
                                  "Add resources to a Space and share it to create a group knowledge base",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: XColors.submitButton,
                            ),
                            child: Center(
                              child: Text(
                                "Create a Space",
                                style: TextStyle(
                                    color: XColors.background,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  "Examples",
                  style: TextStyle(fontSize: 18, color: XColors.whiteColor),
                ),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(
                        child: ExampleCard(
                      text: "Perplexity Support",
                      emogi: '📞',
                    )),
                    Expanded(
                        child: ExampleCard(
                      text: "What would Buffet say?",
                      emogi: '💰',
                    )),
                    Expanded(
                        child: ExampleCard(
                      text: "LLM Research",
                      emogi: '🧠',
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
