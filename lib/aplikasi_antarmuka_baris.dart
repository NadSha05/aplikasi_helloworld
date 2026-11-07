import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        title: Text('Demo Baris Flutter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol 1'),
            ),
            Container(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol 2'),
            ),
            Container(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol 3'),
            ),
            Container(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tombol 4'),
            ),
          ],
        ),
      ),
    );
  }
}