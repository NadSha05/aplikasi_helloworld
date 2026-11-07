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
  int? selected = -1;

  void onChanged(int? value) {
    setState(() {
      selected = value;
      print('Pilihan: $selected');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Radio Button'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Jenis Kelamin : '),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 0,
                  groupValue: selected,
                  onChanged: (int? value) {
                    onChanged(value);
                  },
                ),
                Container(width: 8.0),
                Text('Pria'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 1,
                  groupValue: selected,
                  onChanged: (int? value) {
                    onChanged(value);
                  },
                ),
                Container(width: 8.0),
                Text('Wanita'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}