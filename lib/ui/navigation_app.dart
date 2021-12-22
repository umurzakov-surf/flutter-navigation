import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/home/home_page.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
