import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Rendang';
  final String location = 'Minangkabau, Sumatra Barat';
  final String description =
      "Rendang adalah hidangan berbahan dasar daging yang berasal dari Minangkabau, Sumatra Barat. Masakan ini dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka bumbu rempah-rempah dan santan. Proses memasaknya memakan waktu berjam-jam hingga yang tinggal hanyalah potongan daging berwarna hitam pekat atau kecoklatan.";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner Nusantara'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/rendang.jpg',
            height: 250.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                // Expanded membuat area judul mengambil sisa ruang yang ada secara fleksibel
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // Ikon Star dan Angka Rating di posisi paling kanan
                const Icon(
                  Icons.star,
                  size: 28.0,
                  color: Colors.red,
                ),
                const SizedBox(width: 4.0),
                const Text(
                  '5',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
                height: 1.4, // Menambahkan jarak antar baris teks agar lebih enak dibaca
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}