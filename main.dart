import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I Am Smart",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/smart.png",
                width: 150, // Sesuaikan ukuran gambar
                height: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Learn, grow, and prove your genius!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\uD83E\uDDE0 Menjawab soal dengan yakin, tapi salah"),
                  Text("\uD83D\uDCDA Membeli buku banyak, tapi cuma baca daftar isinya"),
                  Text("\uD83D\uDCA1 Sering bilang 'Gampang!' tapi tetap googling"),
                  Text("\uD83C\uDF93 Diskusi panjang lebar, tapi tetap bingung sendiri"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}