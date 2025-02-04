import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Flutter Saya',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue, // Ganti dengan warna yang Anda inginkan
        ),
        body: Center(
          child: new Text('Hello World!'),
         
        ),
      ),
    );
  }
}