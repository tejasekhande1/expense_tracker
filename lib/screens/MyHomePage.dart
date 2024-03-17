import 'dart:async';

import 'package:expense_tracker/widgets/SplashScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home Page")),
    );
  }
}
