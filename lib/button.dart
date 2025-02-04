import 'package:flutter/material.dart';

main() {
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
          body: Container(
            width: 200,
            height: 40,
            child: ElevatedButton.icon(
              onPressed: () {
                print('Tombol Saya ditekan');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              icon: Icon(Icons.person, color: Colors.white),
              label: new Text('LOGIN', style: TextStyle(color: Colors.white)),
            ),
          )),
    );
  }
}
