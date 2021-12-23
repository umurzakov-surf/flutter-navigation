import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/second/second_page_wm.dart';

class SecondPage extends ElementaryWidget<SecondPageWM> {
  const SecondPage({Key? key}) : super(secondPageWMFactory, key: key);

  @override
  Widget build(SecondPageWM wm) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second page')),
    );
  }
}
