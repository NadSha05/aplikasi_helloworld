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
  DateTime date = DateTime.now();

  Future<void> selectDate(BuildContext context) async{
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: date, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2030)
    );

    if (selected!=null && selected!=date){
      setState(() {
        date = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo showDatePicker()'),
      ),

      body: Center( // Ditambahkan Center agar berada di tengah layar
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi vertikal di tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Mengatur posisi horizontal di tengah
            children: <Widget>[
              Text('Tanggal yang dipilih : ${date.toString()}'),
              SizedBox(height: 10), // Opsional: jarak sedikit agar tombol tidak terlalu nempel dengan teks
              ElevatedButton(onPressed: (){selectDate(context);}, child: Text('Pilih Tanggal')),
            ],
          ),
        ),
      ),
    );
  }
}