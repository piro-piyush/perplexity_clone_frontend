import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/common/widgets/icons/hover_icon.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/widgets/hover_login_options.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/widgets/login_tile_widget.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class WelcomeDialog extends StatefulWidget {
  const WelcomeDialog({super.key});

  @override
  State<WelcomeDialog> createState() => _WelcomeDialogState();
}

class _WelcomeDialogState extends State<WelcomeDialog> {
  bool isSingle = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 848,
        height: 456,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: XColors.searchBar, // Change to match your theme
        ),
        child: Row(
          children: [
            // Left Side: Cached Network Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: XImages.welcomeImage,
                width: 466,
                height: 456,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),

            // Right Side: Stack with Column & Close Icon
            Expanded(
              child: Stack(
                children: [
                  // Column with content
                  Padding(
                    padding: const EdgeInsets.all(48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Welcome Back!",
                              style: GoogleFonts.instrumentSerif(
                                  fontSize: 40, color: XColors.whiteColor),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Login to continue your journey",
                              style: TextStyle(
                                  fontSize: 16, color: XColors.iconGrey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                LoginTileWidget(
                                  iconImage: XImages.google,
                                  text: "Continue with Google",
                                  backgroundColor: XColors.submitButton,
                                  foregroundColor: Colors.black,
                                  onTap: () {},
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 6),
                                  hoverColor: Colors.black,
                                  fontSize: 14,
                                  iconWidth: 17,
                                  iconHeight: 14,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                isSingle
                                    ? HoverLoginOptions(
                                        onTap: () {
                                          setState(() {
                                            isSingle = false;
                                          });
                                        },
                                      )
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        spacing: 4,
                                        children: [
                                          LoginTileWidget(
                                            iconImage: XImages.apple,
                                            text: "Continue with Apple",
                                            backgroundColor: XColors.iconBg,
                                            foregroundColor: XColors.whiteColor,
                                            onTap: () {},
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 6),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 6),
                                            hoverColor: XColors.whiteColor,
                                            fontSize: 14,
                                            iconWidth: 17,
                                            iconHeight: 14,
                                          ),
                                        ],
                                      )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Divider(
                              thickness: 0.1,
                              color: XColors.iconGrey,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              expands: false,
                              autofocus: true,
                              cursorColor: XColors.iconGrey,
                              // Default blinking cursor
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: "Enter your email",
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF707474),
                                    fontWeight: FontWeight.bold),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 16),
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
                              height: 4,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              decoration: BoxDecoration(
                                  color: XColors.iconBg,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 8,
                                  children: [
                                    Text(
                                      "Continue with email",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: XColors.iconGrey),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      weight: 0.1,
                                      size: 10,
                                      color: XColors.iconGrey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Close Icon at Top Right
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
            ),
          ],
        ),
      ),
    );
  }
}
