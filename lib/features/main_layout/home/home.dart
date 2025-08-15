import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../core/colors_manager.dart';
import '../../../core/widgets/custom_tab_bar.dart';
import '../../../l10n/app_localizations.dart';
import '../../../models/category_model.dart';
import '../../../providers/config_provider.dart';
import '../../../providers/language_provider.dart';
import 'event_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    var  themeProvider = Provider.of<ThemeProvider>(context);
    var  langProvider = Provider.of<LanguageProvider>(context);
    return Column(
      children: [
        Container(
          padding: REdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          child: SafeArea(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${appLocalizations.welcome_back} ✨",
                            style:Theme.of(context).textTheme.titleSmall
                          ),
                          Text(
                            "Fathy",
                            style:Theme.of(context).textTheme.titleMedium
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: ColorsManager.white ,

                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "Cairo, Egypt",
                                style: Theme.of(context).textTheme.titleSmall
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {
                           themeProvider.changeAppTheme(themeProvider.isDark ? ThemeMode.light : ThemeMode.dark);
                          },
                          child: Icon( themeProvider.isDark ? Icons.dark_mode : Icons.light_mode,color: ColorsManager.white,)),
                      InkWell(
                        onTap: () {
                          langProvider.changeCurrentLang(langProvider.isEnglish ? "ar" : "en");
                        },
                        child: Card(
                          color: Theme.of(context).cardColor,
                          child: Padding(
                            padding: REdgeInsets.all(8.0),
                            child: Text(
                              langProvider.isEnglish ? "En": "Ar",
                              style: Theme.of(context).textTheme.displaySmall
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  CustomTabBar(categories: CategoryModel.getCategoriesWithAll(context),
                      selectedBackgroundColor: ColorsManager.whiteBlue,
                      unSelectedBackgroundColor: Colors.transparent,
                      selectedForegroundColor: ColorsManager.blue,
                      unSelectedForegroundColor: ColorsManager.whiteBlue
                       ,),
                ],
              ),
            ),
          ),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) => EventItem(), itemCount: 20,))
      ],
    );
  }
}
