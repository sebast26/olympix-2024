import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olympix 2024'),
        backgroundColor: Colors.lightGreen[800],
        centerTitle: true,
      ),
      body: const Text('Hello from Olympix 2024'),
    );
  }
}
