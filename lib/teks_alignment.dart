import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String paragraf1 =
      "Teks pada paragraf ini dibuat menggunakan nilai TextAlign.left sehingga teks ditampilkan rata kiri";
  final String paragraf2 =
      "Teks pada paragraf ini dibuat menggunakan nilai TextAlign.center sehingga teks ditampilkan rata tengah";
  final String paragraf3 =
      "Teks pada paragraf ini dibuat menggunakan nilai TextAlign.kanan sehingga teks ditampilkan rata kanan";
  final String paragraf4 =
      "Teks pada paragraf ini dibuat menggunakan nilai TextAlign.justify sehingga teks ditampilkan rata kiri dan kanan";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Text.TextAlign')),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              paragraf1,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              paragraf2,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              paragraf3,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              paragraf4,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}