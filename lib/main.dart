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
        body: Container(
          child: Center(
            child: new Text('Hello World!'),

          ),
          decoration: BoxDecoration(
            color: Colors.blue[300],
            border: Border(
              bottom: BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
              top: BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
              
            )
          ),
          // height: double.infinity,
          // width: double.infinity, ukuran menyesuaikan layar
          height: 150,
          width: 350,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
         margin: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}