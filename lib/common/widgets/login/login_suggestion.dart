import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/icons/hover_icon.dart';
import 'package:perplexity_clone/common/widgets/login/login_method_widget.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class LoginSuggestion extends StatelessWidget {
  const LoginSuggestion({super.key, required this.headerText});

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 480,
                  child: LoginMethodWidget(headerText: headerText),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: HoverIcon(
              iconImage: XImages.close,
              onTap: () => Get.back(),
            ),
          ),
        ],
      ),
    );
  }
}
