import 'package:get/get.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class DiscoverController extends GetxController {
  static DiscoverController get instance => Get.find();

  List<String> headers = [
    "For You",
    "Top",
    "Tech & Science",
    "Finance",
    "Arts & Culture",
    "Sports",
    "Entertainment"
  ];
  List<String> icons = [
    XImages.forYou,
    XImages.top,
    XImages.ai,
    XImages.dollar,
    XImages.art,
    XImages.sports,
    XImages.entertainment,
  ];
}
