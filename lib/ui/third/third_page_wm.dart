import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/third/third_page.dart';
import 'package:flutter_navigation/ui/third/third_page_model.dart';

ThirdPageWM thirdPageWMFactory(BuildContext _) => ThirdPageWM(ThirdPageModel());

class ThirdPageWM extends WidgetModel<ThirdPage, ThirdPageModel> {
  ThirdPageWM(ThirdPageModel model) : super(model);
}
