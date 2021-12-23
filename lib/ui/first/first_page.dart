import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first/first_page_wm.dart';

class FirstPage extends ElementaryWidget<FirstPageWM> {
  const FirstPage({Key? key}) : super(firstPageWMFactory, key: key);

  @override
  Widget build(FirstPageWM wm) {
    return Scaffold(
      appBar: AppBar(title: const Text('First page')),
      body: Center(
        child: TextButton(
          onPressed: wm.toFirstDeepPage,
          child: const Text('To first deep page'),
        ),
      ),
    );
  }
}
