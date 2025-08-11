import 'package:eventapp/Features/mainLayoutScreen/LayoutScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:eventapp/Features/Authentication/LoginScreen.dart';
import 'package:eventapp/Features/Authentication/RegisterScreen.dart';
import 'package:eventapp/Features/CreateEvent/CreateEvent.dart';
import 'package:eventapp/Features/mainLayoutScreen/Favorite_tab/FavoritesScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/HomeScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/MapScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/profileScreen.dart';
import 'package:flutter/material.dart';

class routesManager {
  // Route names
  static const String loginScreen = '/LoginScreen';
  static const String register = '/register';
  static const String layout = '/Layout';
  static const String home = '/Home';
  static const String map = '/Map';
  static const String fav = '/Fav';
  static const String profile = '/profile';
  static const String createEvent = '/Create';

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return CupertinoPageRoute(builder: (_) => const Loginscreen());

      case layout:
        return CupertinoPageRoute(builder: (_) => const LayoutScreen());

      case register:
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());

      case home:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(body: Homescreen()));

      case map:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(body: Mapscreen()));

      case fav:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(body: Favoritesscreen()));

      case profile:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(body: Profilescreen()));

      case createEvent:
        return CupertinoPageRoute(
            builder: (_) => const Scaffold(body: Createevent()));

      default:
        return CupertinoPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
