import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  HomeState createState()=>HomeState();
}

class HomeState extends State<Home>{
  final List<String> settings = ['Airplan mode','WLAN','Mobile Data','Bluetooth'];
  List<bool> settingValues = [false,false,false,false];

  void onSwitch1Changed(bool value){
    setState(() {
      settingValues[0] = value;
    });
    print(settingValues);
  }
  
  void onSwitch2Changed(bool value){
    setState(() {
      settingValues[1] = value;
    });
    print(settingValues);
  }

  void onSwitch3Changed(bool value){
    setState(() {
      settingValues[2] = value;
    });
    print(settingValues);
  }

  void onSwitch4Changed(bool value){
    setState(() {
      settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Switch'),
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Switch(
                  value: settingValues[0],
                  onChanged: (bool value){
                    onSwitch1Changed(value);
                  },
                ),
                Container(width: 8.0,),
                Text(settings[0]),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Switch(
                  value: settingValues[1],
                  onChanged: (bool value){
                    onSwitch2Changed(value);
                  },
                ),
                Container(width: 8.0,),
                Text(settings[1]),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Switch(
                  value: settingValues[2],
                  onChanged: (bool value){
                    onSwitch3Changed(value);
                  },
                ),
                Container(width: 8.0,),
                Text(settings[2]),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Switch(
                  value: settingValues[3],
                  onChanged: (bool value){
                    onSwitch4Changed(value); // Diperbaiki dari onSwitch1Changed menjadi onSwitch4Changed
                  },
                ),
                Container(width: 8.0,),
                Text(settings[3]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}