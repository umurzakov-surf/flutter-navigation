import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first/first_page.dart';
import 'package:flutter_navigation/ui/first/first_page_model.dart';
import 'package:flutter_navigation/ui/first_second/first_deep_page.dart';

FirstPageWM firstPageWMFactory(BuildContext _) => FirstPageWM(FirstPageModel());

class FirstPageWM extends WidgetModel<FirstPage, FirstPageModel> {
  FirstPageWM(FirstPageModel model) : super(model);

  void toFirstDeepPage() {
    Navigator.of(context)
        .pushReplacement<void, void>(MaterialPageRoute(builder: (_) => const FirstDeepPage()));
  }
}
