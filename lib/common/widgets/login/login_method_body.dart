import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/texts/text_with_hover_effect.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/login_tile_widget.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class LoginMethodBody extends StatelessWidget {
  const LoginMethodBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              LoginTileWidget(
                iconImage: XImages.google,
                text: "Continue with Google",
                onTap: () {},
              ),
              LoginTileWidget(
                iconImage: XImages.apple,
                text: "Continue with Apple",
                onTap: () {},
              ),
              LoginTileWidget(
                iconImage: XImages.sso,
                text: "Single sign-on (SSO)",
                onTap: () {},
              ),
            ],
          ),
          Text(
            "or",
            style: TextStyle(fontSize: 16, color: XColors.iconGrey),
          ),
          TextFormField(
            expands: false,
            cursorColor: XColors.iconGrey,
            // Default blinking cursor
            decoration: InputDecoration(
              isDense: true,
              hintText: "Enter your email",
              hintStyle: TextStyle(color: XColors.iconGrey),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              filled: true,
              // Enables background color
              fillColor: XColors.iconBg,
              // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                // Rounded edges
                borderSide: BorderSide.none, // Removes default border
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),

                borderSide: BorderSide.none, // No border when enabled
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: XColors.iconGrey,
                  // Border color when focused
                  width: 0.1, // Thin border width
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
                color: XColors.iconBg, borderRadius: BorderRadius.circular(4)),
            child: Center(
              child: Text(
                "Continue with email",
                style: TextStyle(
                    fontSize: 16,
                    color: XColors.iconGrey.withValues(alpha: 0.5)),
              ),
            ),
          ),
          TextWithHoverEffect(
            text: "Close",
            onTap: () => Get.back(),
          ),
        ],
      ),
    );
  }
}
