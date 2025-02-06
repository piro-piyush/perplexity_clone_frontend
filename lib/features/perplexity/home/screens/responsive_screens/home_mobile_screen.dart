import 'package:flutter/material.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/home_body.dart';
import 'package:perplexity_clone/data/services/chat_web_service.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  bool isHoveringQuestionMark = false;

  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}
