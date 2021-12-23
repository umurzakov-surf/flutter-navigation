import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/third/third_page.dart';

class ThirdTab extends StatelessWidget {

  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(builder: (_) => const ThirdPage()),
            );
          },
          child: const Text('To third page'),
        ),
      ],
    );
  }
}
