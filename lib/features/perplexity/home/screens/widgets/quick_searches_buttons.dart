import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_search_container.dart';
import 'package:perplexity_clone/utils/device/device_utility.dart';

class QuickSearchesButtons extends StatelessWidget {
  const QuickSearchesButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return !XDeviceUtils.isMobileScreen(context)
        ? SizedBox(
            width: 640,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: QuickSearchContainer(
                        headerEmogi: "✈️",
                        content: "Best travel destinations for 2025",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: QuickSearchContainer(
                        headerEmogi: "🍲",
                        content: "Easy 30-minute dinner recipes",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: QuickSearchContainer(
                        headerEmogi: "📱",
                        content: "Top smartphones under \$500",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: QuickSearchContainer(
                        headerEmogi: "💻",
                        content: "Best laptops for programming",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Column(
            spacing: 8,
            children: [
              QuickSearchContainer(
                headerEmogi: "✈️",
                content: "Best travel destinations for 2025",
              ),
              QuickSearchContainer(
                headerEmogi: "🍲",
                content: "Easy 30-minute dinner recipes",
              ),
              QuickSearchContainer(
                headerEmogi: "📱",
                content: "Top smartphones under \$500",
              ),
              QuickSearchContainer(
                headerEmogi: "💻",
                content: "Best laptops for programming",
              ),
            ],
          );
  }
}
