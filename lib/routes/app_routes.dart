import 'package:get/get.dart';
import 'package:perplexity_clone/features/perplexity/chat/screens/chat_screen.dart';
import 'package:perplexity_clone/features/perplexity/discover/screens/discover_screen.dart';
import 'package:perplexity_clone/features/perplexity/home/screens/home_screen.dart';
import 'package:perplexity_clone/features/perplexity/library/screens/library_screen.dart';
import 'package:perplexity_clone/features/perplexity/spaces/screens/spaces_screen.dart';
import 'package:perplexity_clone/features/personalization/settings/screens/settings_screen.dart';
import 'package:perplexity_clone/routes/routes.dart';

class XAppRoute {
  static final List<GetPage> pages = [
    // GetPage(name: XRoutes.login, page: () => const LoginScreen()),
    // GetPage(name: XRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
    // GetPage(name: XRoutes.resetPassword, page: () => const ResetPasswordScreen()),
    GetPage(name: XRoutes.home, page: () => const HomeScreen()),
    GetPage(name: XRoutes.discover, page: () => const DiscoverScreen()),
    GetPage(name: XRoutes.spaces, page: () => const SpacesScreen()),
    GetPage(name: XRoutes.library, page: () => const LibraryScreen()),

    // Personalization
    GetPage(name: XRoutes.settings, page: () => const SettingsScreen()),

    // Chat
    GetPage(name: XRoutes.chat, page: () => const ChatScreen()),
  ];
}
