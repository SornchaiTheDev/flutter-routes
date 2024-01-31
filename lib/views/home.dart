import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key, required this.onPressButton});

  final void Function(int index) onPressButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            onPressed: () => onPressButton(1),
            child: const Text("About"),
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
