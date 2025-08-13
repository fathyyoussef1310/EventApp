import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Confiq/Theme.dart';
import 'core/routesManager.dart';
void main() {
  runApp(const EventlyApp());
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: ThemeController.themeMode,
          builder: (context, mode, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: routesManager.getRoute,
              initialRoute: routesManager.loginScreen,
              theme: ThemeManager.light,
              darkTheme: ThemeManager.dark,
              themeMode: ThemeController.themeMode.value,
              locale: const Locale("en"),
            );
          },
        );
      },
    );
  }
}
