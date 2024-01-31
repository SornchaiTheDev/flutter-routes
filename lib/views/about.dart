import 'package:flutter/material.dart';

class AboutRoute extends StatelessWidget {
  const AboutRoute({super.key, required this.onPressButton});

  final void Function(int index) onPressButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "About",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            onPressed: () => onPressButton(0),
            child: const Text("Back"),
          ),
          ElevatedButton(
            onPressed: () => onPressButton(2),
            child: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}
