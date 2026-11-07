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
  final List<String> bahasa = ['Nasi Goreng', 'Sate Ayam', 'Soto Lamongan'];
  bool? selected1 = false;
  bool? selected2 = false;
  bool? selected3 = false;
  List<int> list = [];

  void onChanged1(bool? value) {
    setState(() {
      selected1 = value;
      if (value == true) {
        list.add(0);
      } else {
        list.remove(0);
      }
    });
    print(list);
  }

  void onChanged2(bool? value) {
    setState(() {
      selected2 = value;
      if (value == true) {
        list.add(1);
      } else {
        list.remove(1);
      }
    });
    print(list);
  }

  void onChanged3(bool? value) {
    setState(() {
      selected3 = value;
      if (value == true) {
        list.add(2);
      } else {
        list.remove(2);
      }
    });
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Makanan yang disukai: '),
            Row(
              children: <Widget>[
                Checkbox(
                  value: selected1,
                  onChanged: (bool? value) {
                    onChanged1(value);
                  },
                ),
                Container(width: 8.0),
                Text(bahasa[0]),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: selected2,
                  onChanged: (bool? value) {
                    onChanged2(value);
                  },
                ),
                Container(width: 8.0),
                Text(bahasa[1]),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: selected3,
                  onChanged: (bool? value) {
                    onChanged3(value);
                  },
                ),
                Container(width: 8.0),
                Text(bahasa[2]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}