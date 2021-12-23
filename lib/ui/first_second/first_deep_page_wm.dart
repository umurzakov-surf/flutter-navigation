import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first_second/first_deep_page.dart';
import 'package:flutter_navigation/ui/first_second/first_deep_page_model.dart';
import 'package:flutter_navigation/ui/first_second/widgets/modal.dart';
import 'package:flutter_navigation/ui/second/second_page.dart';
import 'package:flutter_navigation/ui/third/third_page.dart';

FirstDeepPageWM firstDeepPageWMFactory(BuildContext _) =>
    FirstDeepPageWM(FirstDeepPageModel());

class FirstDeepPageWM extends WidgetModel<FirstDeepPage, FirstDeepPageModel> {
  FirstDeepPageWM(FirstDeepPageModel model) : super(model);

  void toSecondPage() {
    Navigator.of(context).pushAndRemoveUntil<void>(
      MaterialPageRoute(builder: (context) => const SecondPage()),
      ModalRoute.withName('/'),
    );
  }

  void toThirdPage() {
    Navigator.of(context).pushAndRemoveUntil<void>(
      MaterialPageRoute(builder: (context) => const ThirdPage()),
      ModalRoute.withName('/'),
    );
  }

  void showModal() {
    showDialog<void>(
      context: context,
      builder: (_) {
        return Modal(
          toSecondPage: toSecondPage,
          toThirdPage: toThirdPage,
        );
      },
    );
  }
}
