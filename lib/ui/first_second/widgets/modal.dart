import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final VoidCallback toSecondPage;
  final VoidCallback toThirdPage;

  const Modal({
    Key? key,
    required this.toSecondPage,
    required this.toThirdPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: toSecondPage,
            child: const Text('To second page'),
          ),
          TextButton(
            onPressed: toThirdPage,
            child: const Text('To third page'),
          ),
        ],
      ),
    );
  }
}
