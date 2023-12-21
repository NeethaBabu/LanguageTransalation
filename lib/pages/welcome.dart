import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Welcome to Slide menu"),),
      body: Center(
        child: Container(height: 50,
        width: 150,
        child: Text("Welcome to slide menu"),),
      ),
    );
  }
}
