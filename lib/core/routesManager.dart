import 'package:eventapp/Features/mainLayoutScreen/LayoutScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/Favorite_tab/FavoritesScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/MapScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Features/Authentication/LoginScreen.dart';
import '../Features/Authentication/RegisterScreen.dart';
import '../Features/CreateEvent/CreateEvent.dart';
class routesManager {
  static const String loginScreen = '/login';
  static const String register = '/register';
  static const String layout = '/layout';
  static const String mapScreen = '/map';
  static const String favourites = '/favourites';
  static const String profile = "/profile";
  static const String Home = '\Home';
  static const String createEvent = '\Event';
  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return CupertinoPageRoute(builder: (_) => const Loginscreen());

      case register:
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());

      case layout:
        return CupertinoPageRoute(builder: (_) => const Layoutscreen());

      case mapScreen:
        return CupertinoPageRoute(builder: (_) => const Mapscreen());

      case favourites:
        return CupertinoPageRoute(builder: (_) => const Favoritesscreen());

      case profile:
        return CupertinoPageRoute(builder: (_) => Profilescreen());

      case Home:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(
              body: Center(child: Text("Home Screen Placeholder")),
            ));

      case createEvent:
        return CupertinoPageRoute(builder: (_) => Createevent());

      default:
        return CupertinoPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route found")),
          ),
        );
    }
  }
}
