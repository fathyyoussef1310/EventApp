import 'package:flutter/cupertino.dart';
import '../Features/Authentication/LoginScreen.dart';
import '../Features/Authentication/RegisterScreen.dart';
class routesManager {
  static const String LoginScreen = '\LoginScreen';
  static const String register = '\register';
  static Route? getRoute(RouteSettings settings) {
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
  }
}
