import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perplexity_clone/features/perplexity/library/models/thread_model.dart';

class LibraryController extends GetxController {
  static LibraryController get instance => Get.find();
  final searchController = TextEditingController();
  RxList threadList = ThreadModel.dummyThreads.obs;
}
