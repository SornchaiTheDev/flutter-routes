import 'package:flutter/material.dart';
import 'package:routes/views/about.dart';
import 'package:routes/views/home.dart';
import 'package:routes/views/settings.dart';

class BottomNavigationRoute extends StatefulWidget {
  const BottomNavigationRoute({super.key});

  @override
  State<BottomNavigationRoute> createState() => _BottomNavigationRouteState();
}

class _BottomNavigationRouteState extends State<BottomNavigationRoute> {
  int currentIndex = 0;

  void drawerNavigate(int index) {
    setState(() => currentIndex = index);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomeRoute(
        onPressButton: (index) => setState(() => currentIndex = index),
      ),
      AboutRoute(
        onPressButton: (index) => setState(() => currentIndex = index),
      ),
      SettingsRoute(
        onPressButton: (index) => setState(() => currentIndex = index),
      )
    ];
    return Scaffold(
      body: pages[currentIndex],
      appBar: AppBar(title: const Text("Bottom Navigation")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Text(
                "Menus",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            ListTile(
              title: const Text("Home"),
              trailing: const Icon(Icons.home),
              onTap: () => drawerNavigate(0),
              selected: currentIndex == 0,
            ),
            ListTile(
              title: const Text("About"),
              trailing: const Icon(Icons.person),
              onTap: () => drawerNavigate(1),
              selected: currentIndex == 1,
            ),
            ListTile(
              title: const Text("Settings"),
              trailing: const Icon(Icons.settings),
              onTap: () => drawerNavigate(2),
              selected: currentIndex == 2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "about",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}
