import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/utils/constants/image_strings.dart';

class DiscoverController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static DiscoverController get instance => Get.find();

  late TabController tabController;

  final List<Map<String, String>> tabs = [
    {"icon": XImages.forYou, "title": "For You"},
    {"icon": XImages.top, "title": "Top"},
    {"icon": XImages.ai, "title": "Tech & Science"},
    {"icon": XImages.dollar, "title": "Finance"},
    {"icon": XImages.art, "title": "Arts & Culture"},
    {"icon": XImages.sports, "title": "Sports"},
    {"icon": XImages.entertainment, "title": "Entertainment"},
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
