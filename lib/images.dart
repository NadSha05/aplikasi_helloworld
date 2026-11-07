import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Image'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/india.jpg',
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Divider(),
          Image.asset(
            'images/swiss.jpg',
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}