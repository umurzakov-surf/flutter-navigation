import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/second/second_page.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(builder: (_) => const SecondPage()),
            );
          },
          child: const Text('To second page'),
        ),
      ],
    );
  }
}
