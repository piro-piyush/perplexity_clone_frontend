import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/footer_button.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          FooterButton(
            title: "Pro",
            onTap: () {},
          ),
          FooterButton(
            title: "Enterprise",
            onTap: () {},
          ),
          FooterButton(
            title: "Store",
            onTap: () {},
          ),
          FooterButton(
            title: "Blog",
            onTap: () {},
          ),
          FooterButton(
            title: "Careers",
            onTap: () {},
          ),
          FooterButton(
            title: "Education",
            onTap: () {},
          ),
          FooterButton(
            title: "English (English) ",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
