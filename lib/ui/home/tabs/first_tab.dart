import 'package:flutter/material.dart';
import 'package:flutter_navigation/ui/first/first_page.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(builder: (_) => const FirstPage()),
            );
          },
          child: const Text('To first page'),
        ),
      ],
    );
  }
}
