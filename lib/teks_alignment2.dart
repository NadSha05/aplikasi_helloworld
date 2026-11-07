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
  final String teks1 = "Nilai TextAlign.start pada text dengan TextDirection.ltr";
  final String teks2 = "Nilai TextAlign.end pada text dengan TextDirection.ltr";
  final String teks3 = "Nilai TextAlign.start pada text dengan TextDirection.rtl";
  final String teks4 = "Nilai TextAlign.end pada text dengan TextDirection.rtl";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Text.Alignment'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              teks1,
              style: TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              teks2,
              style: TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              teks3,
              style: TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              teks4,
              style: TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}