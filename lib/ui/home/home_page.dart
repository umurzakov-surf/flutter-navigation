import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/home/home_page_wm.dart';
import 'package:flutter_navigation/ui/home/widgets/bottom_navbar.dart';

class HomePage extends ElementaryWidget<HomePageWM> {
  const HomePage({Key? key}) : super(homePageFactory, key: key);

  @override
  Widget build(HomePageWM wm) {
    return ValueListenableBuilder<int>(
      valueListenable: wm.index,
      builder: (_, index, __) {
        return Scaffold(
          appBar: AppBar(title: const Text('Tabs Page')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Active tab: ${index + 1}', style: const TextStyle(fontSize: 24),),
                const SizedBox(height: 10,),
                wm.screensList.elementAt(index),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            onNavBarTap: wm.onNavBarTap,
            selectedIndex: index,
          ),
        );
      },
    );
  }
}
