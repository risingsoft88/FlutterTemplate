import 'package:flutter/material.dart';
import 'package:flutter_template/screens/settings_screen.dart';
import 'package:flutter_template/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TemplateApp',
      initialRoute: '/',
      routes: {
        '/': ((context) => TabsScreen()),
        SettingsScreen.routeName:(context) => SettingsScreen(),
      },
    );
  }
}
