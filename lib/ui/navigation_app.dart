import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first/first_page.dart';
import 'package:flutter_navigation/ui/first_second/first_deep_page.dart';
import 'package:flutter_navigation/ui/home/home_page.dart';
import 'package:flutter_navigation/ui/second/second_page.dart';
import 'package:flutter_navigation/ui/third/third_page.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/first': (context) => const FirstPage(),
        '/first/deep': (context) => const FirstDeepPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
    );
  }
}
