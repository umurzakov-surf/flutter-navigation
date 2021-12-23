import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/third/third_page_wm.dart';

class ThirdPage extends ElementaryWidget<ThirdPageWM> {
  const ThirdPage({Key? key}) : super(thirdPageWMFactory, key: key);

  @override
  Widget build(ThirdPageWM wm) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third page')),
    );
  }
}
