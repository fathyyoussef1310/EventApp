import 'package:eventlyapp/Features/CreateEvent/CreateEvent.dart';
import 'package:eventlyapp/Features/mainLayoutScreen/LayoutScreen.dart';
import 'package:eventlyapp/Features/mainLayoutScreen/ScreensOfLayout/FavoritesScreen.dart';
import 'package:eventlyapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/HomeScreen.dart';
import 'package:eventlyapp/Features/mainLayoutScreen/ScreensOfLayout/MapScreen.dart';
import 'package:eventlyapp/Features/mainLayoutScreen/ScreensOfLayout/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import '../Features/Authentication/LoginScreen.dart';
import '../Features/Authentication/RegisterScreen.dart';
class routesManager {
  static const String LoginScreen = '\LoginScreen';
  static const String register = '\register';
  static const String Layout='\Layout';
  static const String Home='\Home';
  static const String Map='\Map';
  static const String Fav='\Fav';
  static const String profile='\profile';
  static const String CreateEvent='\Create';

  static Route? getRoute(RouteSettings settings) {
    switch (settings.name)
    {
      case Layout:
        return CupertinoPageRoute(builder: (_) =>  Layoutscreen());
    }
    switch (settings.name)
    {
      case LoginScreen:
        return CupertinoPageRoute(builder: (_) => const Loginscreen());
    }
    switch (settings.name)
    {
      case register:
        return CupertinoPageRoute(builder: (_)=> const RegisterScreen());
    }
    switch (settings.name)
    {
      case Home:
        return CupertinoPageRoute(builder: (_)=> const Homescreen());
    }
    switch (settings.name)
    {
      case Map:
        return CupertinoPageRoute(builder: (_)=> const Mapscreen());
    }
    switch (settings.name)
    {
      case Fav:
        return CupertinoPageRoute(builder: (_)=> const Favoritesscreen());
    }
    switch (settings.name)
    {
      case profile:
        return CupertinoPageRoute(builder: (_)=> const Profilescreen());
    }
    switch (settings.name)
    {
      case CreateEvent:
        return CupertinoPageRoute(builder: (_)=> Createevent());
    }
  }
}
