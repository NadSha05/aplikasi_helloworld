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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String name = "";
  String text = "";

  void onPressed() {
    setState(() {
      if (name.trim().isEmpty) return;
      text = 'Hai $name, apa kabar ?';
    });
  }

  void onChanged(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Flutter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                onChanged(value);
              },
              decoration: InputDecoration(
                hintText: 'Tuliskan nama lengkap Anda',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                onPressed();
              },
              child: Text('Klik'),
            ),
            Container(height: 15.0),
            Text(text),
          ],
        ),
      ),
    );
  }
}