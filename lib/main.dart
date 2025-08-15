import 'package:eventapp/providers/config_provider.dart';
import 'package:eventapp/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'config/theme/theme_manager.dart';
import 'core/routes_manager.dart';
import 'l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
      ],
      child: EventlyApp()));
}
class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
    return ScreenUtilInit(
      designSize: Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>
          MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RoutesManger.getRoute,
              initialRoute: RoutesManger.register,
              theme: ThemeManager.light,
              darkTheme: ThemeManager.dark,
              themeMode:themeProvider.currentTheme,
              localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
              Locale("en"),
      Locale("ar")
      ],
      locale: Locale(langProvider.currentLang),

    ),
    );
  }
}

