import 'package:evently/provider/setting_provider.dart';
import 'package:evently/view/app_starting_point.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(ChangeNotifierProvider(
      create: (context)=>SettingProvider(),
      child: const MyApp()));
}


