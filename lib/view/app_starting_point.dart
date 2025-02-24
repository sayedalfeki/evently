import 'dart:io';

import 'package:evently/provider/setting_provider.dart';
import 'package:evently/utils/app_theme.dart';
import 'package:evently/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingProvider>(context);
    return  MaterialApp(
      initialRoute: AppRoutes.homeRoute,
      routes:{
        AppRoutes.homeRoute:(context)=>const HomeScreen()
      },
      locale: Locale(provider.language??Platform.localeName),
      localizationsDelegates:AppLocalizations.localizationsDelegates ,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:provider.themeMode,
    );
  }
}
