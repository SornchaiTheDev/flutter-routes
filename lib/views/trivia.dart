import 'package:flutter/material.dart';

class TriViaRoute extends StatefulWidget {
  const TriViaRoute({super.key});

  @override
  State<TriViaRoute> createState() => _TriViaRouteState();
}

class _TriViaRouteState extends State<TriViaRoute> {
  Future<void> onPressButton(BuildContext context, String route) async {
    final result = await Navigator.pushNamed(context, route);

    if (!mounted || result == null) return;

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(result as String)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Returning Data Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => onPressButton(context, "/boolean"),
              child: const Text("Pick any option, any option!"),
            ),
            ElevatedButton(
              onPressed: () => onPressButton(context, "/third"),
              child: const Text("Go to Third page"),
            ),
          ],
        ),
      ),
    );
  }
}
