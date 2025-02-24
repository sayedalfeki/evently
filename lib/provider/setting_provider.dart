import 'dart:io';
import 'package:evently/utils/app_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SettingProvider extends ChangeNotifier
{
  SettingProvider()
  {
    getLanguage();
    getTheme();
  }
  String? language;
  ThemeMode? themeMode;
  bool isLanguageHidden=true;
  bool isThemeHidden=true;
  bool? lightTheme;
  Future<SharedPreferences> _getShared()async
  {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    return sharedPreferences;
  }
  changeIsLanguageHidden()
  {
    isLanguageHidden=!isLanguageHidden;
    notifyListeners();
  }
  changeIsThemeHidden()
  {
    isThemeHidden=!isThemeHidden;
    notifyListeners();
  }
  bool isEnglish()
  {
    return language=='en';
  }
  bool isLight()
  {
    return themeMode==ThemeMode.light;
  }
  getLanguage()async
  {
    print("language is "+Platform.localeName.substring(0,2));
    SharedPreferences preferences=await _getShared();
    language=preferences.getString(AppKeys.languageKey)??Platform.localeName.substring(0,2);
    notifyListeners();
  }
  changeLanguage(String newLanguage)async
  {
    language=newLanguage;
    isLanguageHidden=true;
    SharedPreferences preferences=await _getShared();
    preferences.setString(AppKeys.languageKey,language??Platform.localeName);
    notifyListeners();
  }
  getTheme()async
  {
    SharedPreferences preferences=await _getShared();
    lightTheme=preferences.getBool(AppKeys.themKey);
    if(lightTheme==null)
    {
      print("system theme is ${ThemeMode.dark.name}");
      themeMode=ThemeMode.light;
    }
   else if(lightTheme==true)
    {
      themeMode=ThemeMode.light;
    }
    else
    {
      themeMode=ThemeMode.dark;
    }
    notifyListeners();
  }
  changeTheme(ThemeMode newTheme)async
  {
    themeMode=newTheme;
    isThemeHidden=true;
    SharedPreferences preferences=await _getShared();
    if(newTheme==ThemeMode.light) {
      preferences.setBool(AppKeys.themKey,true);
    }
    else
    {
      preferences.setBool(AppKeys.themKey,false);
    }
    notifyListeners();
  }
}