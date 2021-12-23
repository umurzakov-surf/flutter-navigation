import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first/first_page.dart';
import 'package:flutter_navigation/ui/home/home_page.dart';
import 'package:flutter_navigation/ui/home/home_page_model.dart';
import 'package:flutter_navigation/ui/home/tabs/first_tab.dart';
import 'package:flutter_navigation/ui/home/tabs/second_tab.dart';
import 'package:flutter_navigation/ui/home/tabs/third_tab.dart';
import 'home_page_model.dart';

HomePageWM homePageFactory(BuildContext _) => HomePageWM(HomePageModel());

class HomePageWM extends WidgetModel<HomePage, HomePageModel> {
  final List<Widget> screensList = const [
    FirstTab(),
    SecondTab(),
    ThirdTab(),
  ];

  final _index = ValueNotifier(0);

  ValueNotifier<int> get index => _index;

  HomePageWM(HomePageModel model) : super(model);

  void onNavBarTap(int i) {
    index.value = i;
  }
}
