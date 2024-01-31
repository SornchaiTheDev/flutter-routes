import 'package:flutter/material.dart';

class BooleanRoute extends StatelessWidget {
  const BooleanRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Pick an option"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "Yes"),
              child: const Text("yes"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "No"),
              child: const Text("no"),
            ),
          ],
        ),
      ),
    );
  }
}
