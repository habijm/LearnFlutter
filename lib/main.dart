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
          backgroundColor: Colors.blue, // Ganti dengan warna yang Anda inginkan
        ),
        body: TextFormField(
          //obscureText: true,
          //initialValue: 'andy',
          maxLength: 12,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.blue),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 217, 238, 255),
            hintText: 'Masukkan nama Anda',
            labelText: 'Nama',
            helperText: 'Masukkan hanya 10 karakter',
            prefixIcon: Icon(Icons.supervisor_account), // Icon di sebelah kiri
            //suffixIcon: Icon(Icons.close), // Icon di sebelah kanan
          ),
        ),
      ),
    );
  }
}
