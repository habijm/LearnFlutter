import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Test pindah Menu',
    home: page1(),
  ));
}

class page1 extends StatelessWidget {
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
            Text('Ini adalah halaman 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
              },
              child: Text('Pindah ke halaman 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class page2 extends StatelessWidget {
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
            Text('Ini adalah halaman 2'),
            ElevatedButton(
              onPressed: () {
                 Navigator.pop(context);
              },
              child: Text('Pindah ke halaman 1'),
            ),
          ],
        ),
      ),
    );
  }
}

