import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/common/widgets/icons/question_mark.dart';
import 'package:perplexity_clone/features/perplexity/library/controllers/library_controller.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/header.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/thread_card.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/widgets/thread_side_icon.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class LibraryDesktopScreen extends StatelessWidget {
  const LibraryDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LibraryController());
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LibraryHeader(),
              Container(
                padding: EdgeInsets.only(
                  left: 159,
                  right: 159,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 134,
                      right: 134,
                      top: 32,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  SvgPicture.asset(
                                    XImages.threads,
                                    height: 15,
                                    width: 19,
                                    colorFilter: ColorFilter.mode(
                                      XColors.whiteColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  Text(
                                    "Threads",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: XColors.whiteColor),
                                  )
                                ],
                              ),
                              Row(
                                spacing: 8,
                                children: [
                                  ThreadsSideIcon(
                                    onTap: () {},
                                    iconImage: XImages.options,
                                  ),
                                  ThreadsSideIcon(
                                    onTap: () {},
                                    iconImage: XImages.add,
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            color: XColors.iconGrey,
                          ),
                          controller.threadList.isEmpty
                              ? Center(child: Text("No Threads Yet"))
                              : ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      thickness: 0.3,
                                      color: XColors.iconGrey,
                                    );
                                  },
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.threadList.length,
                                  itemBuilder: (context, index) {
                                    final model = controller.threadList[index];
                                    return ThreadCard(
                                      threadModel: model,
                                    );
                                  },
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          // Question Mark Icon
          QuestionMark(),
        ],
      ),
    );
  }
}
