import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';

void main() async {
  // Initialize GetX Local Storage
  await GetStorage.init();

  // Remove # sign from url
  setPathUrlStrategy();

  runApp(const MyApp());
}
