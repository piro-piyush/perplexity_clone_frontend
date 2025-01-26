import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/footer_button.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/quick_searches_buttons.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/widgets/search_section.dart';

class HomeDesktopScreen extends StatefulWidget {
  const HomeDesktopScreen({super.key});

  @override
  State<HomeDesktopScreen> createState() => _HomeDesktopScreenState();
}

class _HomeDesktopScreenState extends State<HomeDesktopScreen> {
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Search Section
                  SearchSection(),

                  SizedBox(
                    height: 16,
                  ),

                  QuickSearchesButton(),
                ],
              )),

              // Footer
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Wrap(
                  alignment: WrapAlignment.center,
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
              )
            ],
          ),
        )
      ],
    );
  }
}
