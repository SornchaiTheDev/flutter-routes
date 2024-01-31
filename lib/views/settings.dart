import 'package:flutter/material.dart';

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({super.key, required this.onPressButton});

  final void Function(int index) onPressButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Settings",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            onPressed: () => onPressButton(1),
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }
}
