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
          title: Text('Aplikasi Flutter Saya'),
          
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
