import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first_second/first_deep_page_wm.dart';

class FirstDeepPage extends ElementaryWidget<FirstDeepPageWM> {
  const FirstDeepPage({Key? key}) : super(firstDeepPageWMFactory, key: key);

  @override
  Widget build(FirstDeepPageWM wm) {
    return Scaffold(
      appBar: AppBar(title: const Text('First deep page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: wm.showModal,
              child: const Text('show dialog'),
            ),
            TextButton(
              onPressed: wm.toSecondPage,
              child: const Text('To second page'),
            ),
            TextButton(
              onPressed: wm.toThirdPage,
              child: const Text('To third page'),
            ),
          ],
        ),
      ),
    );
  }
}
