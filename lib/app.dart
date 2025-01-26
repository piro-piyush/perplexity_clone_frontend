import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/home_screen.dart';
import 'package:perplexity_clone/routes/app_routes.dart';
import 'package:perplexity_clone/routes/routes.dart';
import 'package:perplexity_clone/utils/constants/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perplexity Clone',
      getPages: XAppRoute.pages,
      initialRoute: XRoutes.home,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () => const Scaffold(
                body: Center(
                  child: Text("Page not found"),
                ),
              )),
      theme: ThemeData(
        scaffoldBackgroundColor: XColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: XColors.submitButton),
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
                bodyMedium: const TextStyle(
                  fontSize: 15,
                  color: XColors.whiteColor,
                ),
              ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
