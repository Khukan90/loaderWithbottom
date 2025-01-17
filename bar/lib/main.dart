import 'package:bar/homePage.dart';
import 'package:bar/showcase.dart';
import 'package:flutter/material.dart';
import 'final_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MyHomePage(),
    );
  }
}
