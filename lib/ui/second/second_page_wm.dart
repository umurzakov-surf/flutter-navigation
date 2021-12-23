import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/second/second_page.dart';
import 'package:flutter_navigation/ui/second/second_page_model.dart';

SecondPageWM secondPageWMFactory(BuildContext _) =>
    SecondPageWM(SecondPageModel());

class SecondPageWM extends WidgetModel<SecondPage, SecondPageModel> {
  SecondPageWM(SecondPageModel model) : super(model);
}
