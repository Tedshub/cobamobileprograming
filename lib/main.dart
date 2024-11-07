import 'package:flutter/material.dart';
import 'login_page.dart';
// Pastikan ini ada jika Anda menggunakan profile_page.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BieBot',
      theme: ThemeData(
        primaryColor: Colors.yellow, // Warna utama kuning
        scaffoldBackgroundColor: Colors.white, // Latar belakang putih
        textTheme: const TextTheme(
          displayLarge:
              TextStyle(color: Colors.black), // Menggunakan displayLarge
          bodyLarge: TextStyle(color: Colors.black), // Menggunakan bodyLarge
        ),
      ),
      home: const LoginPage(), // Halaman awal
    );
  }
}
