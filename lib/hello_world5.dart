import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Pemrograman Mobile dengan Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45.0,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}