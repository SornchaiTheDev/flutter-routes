import 'package:flutter/material.dart';
import 'package:routes/views/boolean.dart';
import 'package:routes/views/bottom_navigation.dart';
import 'package:routes/views/tab_bar.dart';
import 'package:routes/views/third_route.dart';
// import 'package:routes/views/first_route.dart';
import 'package:routes/views/trivia.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/tab_nav",
      routes: {
        "/test": (context) => const TriViaRoute(),
        "/boolean": (context) => const BooleanRoute(),
        "/third": (context) => const ThirdRoute(),
        "/": (context) => const BottomNavigationRoute(),
        "/tab_nav": (context) => const TabBarRoute(),
      },
    );
  }
}
