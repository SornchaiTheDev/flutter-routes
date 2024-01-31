import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.name, required this.nickname});

  final String name;
  final String nickname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hi my name is $name or you can call me $nickname",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26.0,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Go back!"),
            ),
          ],
        ),
      ),
    );
  }
}
