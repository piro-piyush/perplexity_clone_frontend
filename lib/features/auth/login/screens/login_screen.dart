import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/icons/hover_icon.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/login_tile_widget.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: 384,
              child: LoginForm(),
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

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  SvgPicture.asset(
                    XImages.appIcon,
                    height: 43,
                    colorFilter:
                        ColorFilter.mode(XColors.whiteColor, BlendMode.srcIn),
                  ),
                  Text(
                    "perplexity",
                    style: TextStyle(fontSize: 30, color: XColors.whiteColor),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 30, color: XColors.whiteColor),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Sign in or sign up to continue",
                    style: TextStyle(fontSize: 14, color: XColors.iconGrey),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  LoginTileWidget(
                    iconImage: XImages.google,
                    text: "Continue with Google",
                    backgroundColor: XColors.submitButton,
                    foregroundColor: Colors.black,
                    onTap: () {},
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    hoverColor: Colors.black,
                    fontSize: 14,
                    iconWidth: 17,
                    iconHeight: 14,
                  ),
                  LoginTileWidget(
                    iconImage: XImages.apple,
                    text: "Continue with Apple",
                    backgroundColor: XColors.iconBg,
                    foregroundColor: XColors.whiteColor,
                    onTap: () {},
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    hoverColor: XColors.whiteColor,
                    fontSize: 14,
                    iconWidth: 17,
                    iconHeight: 14,
                  ),
                  LoginTileWidget(
                    iconImage: XImages.sso,
                    text: "Single sign-on (SSO)",
                    onTap: () {},
                    backgroundColor: XColors.iconBg,
                    foregroundColor: XColors.whiteColor,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    hoverColor: XColors.whiteColor,
                    fontSize: 14,
                    iconWidth: 17,
                    iconHeight: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 0.1,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                expands: false,
                cursorColor: XColors.iconGrey,
                // Default blinking cursor
                decoration: InputDecoration(
                  isDense: true,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF707474),
                      fontWeight: FontWeight.bold),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  filled: true,
                  // Enables background color
                  fillColor: XColors.textFieldColor,
                  // Background color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    // Rounded edges
                    borderSide: BorderSide(
                      color: XColors.iconGrey,
                      // Border color when focused
                      width: 0.1, // Thin border width
                    ), // Removes default border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: XColors.iconGrey,
                      width: 0.1, // Thin border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: XColors.iconGrey,
                      // Border color when focused
                      width: 1, // Thin border width
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                    color: XColors.iconBg,
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: Text(
                    "Continue with email",
                    style: TextStyle(fontSize: 14, color: XColors.iconGrey),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
