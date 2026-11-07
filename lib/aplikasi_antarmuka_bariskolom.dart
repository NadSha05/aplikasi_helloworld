import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo baris-kolom Flutter')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 1')),
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 2')),
              ],
            ),
            Container(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 3')),
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 4')),
              ],
            ),
            Container(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 5')),
                ElevatedButton(onPressed: () {}, child: const Text('Tombol 6')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}