import 'package:flutter/material.dart';
import 'home_page.dart'; // Pastikan untuk mengimpor HomePage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Media ajar Robotika',
          style: TextStyle(
            fontSize: 17, // Ukuran font 17
            fontWeight: FontWeight.bold, // Bold
          ),
        ),
        backgroundColor: Colors
            .yellow, // Mengubah warna latar belakang AppBar menjadi kuning
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menambahkan ikon lock dengan border lingkaran
            Container(
              padding: const EdgeInsets.all(8.0), // Padding di dalam border
              child: const Icon(
                Icons.lock, // Ikon gembok
                size: 40, // Ukuran ikon medium
                color: Colors.black, // Warna ikon
              ),
            ),
            const SizedBox(
                height:
                    32.0), // Jarak yang lebih besar antara ikon dan form email
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Kata Sandi',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman HomePage ketika tombol diklik
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Masuk'),
            ),
            const SizedBox(
                height:
                    8.0), // Jarak sebelum tulisan 'Register' dan 'Lupa password'
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Mengatur agar tombol berada di tengah
              children: [
                TextButton(
                  onPressed: () {
                    // Aksi untuk 'Register'
                    // Misalnya, navigasi ke halaman registrasi
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color:
                            Colors.blue), // Mengatur warna tulisan 'Register'
                  ),
                ),
                const SizedBox(
                    width:
                        8.0), // Jarak kecil antara 'Register' dan 'Lupa password'
                TextButton(
                  onPressed: () {
                    // Aksi untuk 'Lupa password'
                    // Misalnya, navigasi ke halaman reset password
                  },
                  child: Text(
                    'Lupa password',
                    style: TextStyle(
                        color: Colors
                            .blue), // Mengatur warna tulisan 'Lupa password'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
