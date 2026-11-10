import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  HomeState createState()=>HomeState();
}

class HomeState extends State<Home>{
  double sliderValue = 0.0;

  void onChanged(double value){
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text('Nilai aktif: ${sliderValue.round()}'), // Tanda kurung berlebih ')' dihilangkan di sini
            Slider(
              min: 0.0,
              max: 100.0,
              value: sliderValue, 
              onChanged: (double value){onChanged(value);},
            ),
          ],
        ),
      ),
    );
  }
}