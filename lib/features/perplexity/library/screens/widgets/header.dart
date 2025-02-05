import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';
import 'package:perplexity_clone/utils/constants/sizes.dart';

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: XSizes.appBarHeightDesktop,
      decoration: BoxDecoration(
          color: XColors.background,
          border: Border(
              bottom: BorderSide(color: XColors.searchBarBorder, width: 1))),
      child: Center(
        child: Flexible(
          child: Container(
            width: 768,
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Row(
              children: [
                Row(
                  spacing: 8,
                  children: [
                    SvgPicture.asset(
                      XImages.library,
                      height: 26,
                      width: 32,
                      colorFilter: ColorFilter.mode(
                        XColors.whiteColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      "Library",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 108.0),
                    child: TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 40, right: 16, top: 4, bottom: 4),
                        prefixIcon: Icon(Icons.search, color: XColors.iconGrey),
                        hintStyle: TextStyle(color: XColors.iconGrey),
                        isDense: false,
                        hintText: "Search Your threads...",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          // Rounded border
                          borderSide: BorderSide(
                              color: XColors.searchBarBorder,
                              width: 1), // Grey border
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          // Rounded border when focused
                          borderSide: BorderSide(
                              color: XColors.searchBarBorder,
                              width: 1), // Grey border
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1), // Red border for errors
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
