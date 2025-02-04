import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Flutter Saya',
                style: TextStyle(color: Colors.white)),
            backgroundColor:
                Colors.blue, // Ganti dengan warna yang Anda inginkan
          ),
          body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 200,
                width: 600,
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
                  ),
                ),
                child: Row(
                  children: [
                    Text('Hello World! 1'),
                    Text('Hello World! 2'),
                    Text('Hello World! 3'),
                    Text('Hello World! 1'),
                    Text('Hello World! 2'),
                    Text('Hello World! 3'),
                    Text('Hello World! 1'),
                    Text('Hello World! 2'),
                    Text('Hello World! 3'),
                  ],
                ),
              ))),
    );
  }
}
