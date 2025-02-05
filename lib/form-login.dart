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
          title: Text('Login', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue, // Ganti dengan warna yang Anda inginkan
        ),
        body: Column(
          children: [
            Text('Form Login'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Username",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Password  ",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}