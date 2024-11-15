import 'package:custom_themes_sample/home_screen.dart';
import 'package:custom_themes_sample/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeController(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: context.watch<ThemeController>().isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeController.myLightTheme,
      darkTheme: ThemeController.myDarkTheme,
      home: HomeScreen(),
    );
  }
}
