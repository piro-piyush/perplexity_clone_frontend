class XRoutes {
  static const login = '/login';
  static const forgetPassword = '/forget-password';
  static const resetPassword = '/reset-password';

  // Add routes for additional features
  static const home = '/home';
  static const discover = '/discover';
  static const spaces = '/spaces';
  static const library = '/library';

  // Side menu items
  static List<String> sideMenuItems = [
    home,
    discover,
    spaces,
    library,
  ];
}
