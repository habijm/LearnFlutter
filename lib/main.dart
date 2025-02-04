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
          )),
    );
  }
}
