import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/data/services/chat_web_service.dart';
import 'package:perplexity_clone/routes/routes.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final queryController = TextEditingController();
  RxBool isPro = false.obs;
  var queryText = ''.obs; // Observable variable for text changes

  @override
  void onInit() {
    super.onInit();
    queryController.addListener(() {
      queryText.value = queryController.text;
    });
  }

  void search() {
    if (queryController.text.isNotEmpty) {
      ChatWebService().chat(queryController.text.trim());
      Get.toNamed(XRoutes.chat, arguments: queryController.text.trim());
    }
  }
}
