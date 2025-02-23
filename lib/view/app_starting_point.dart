import 'package:evently/view/home/home_page.dart';
import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: AppRoutes.homeRoute,
      routes:{
        AppRoutes.homeRoute:(context)=>const HomeScreen()
      },
    );
  }
}
