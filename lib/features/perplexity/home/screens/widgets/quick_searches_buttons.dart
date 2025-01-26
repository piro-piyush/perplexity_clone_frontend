import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_search_container.dart';

class QuickSearchesButton extends StatelessWidget {
  const QuickSearchesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
