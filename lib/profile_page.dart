import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan untuk mengimpor halaman login

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.yellow, // Mengatur latar belakang AppBar menjadi kuning
        title: const Text(
          'Profil',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:
                  Colors.black // Mengatur warna teks menjadi hitam agar kontras
              ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color:
                Colors.white, // Mengatur latar belakang halaman menjadi putih
            width: double.infinity, // Mengatur lebar menjadi penuh
            height: double.infinity, // Mengatur tinggi menjadi penuh
            child: Center(
              // Menggunakan Center untuk memusatkan konten
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Mengatur agar konten berada di tengah secara vertikal
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Mengatur agar konten berada di tengah secara horizontal
                children: [
                  // Foto Profil dengan Border Lingkaran
                  CircleAvatar(
                    radius: 50, // Ukuran lingkaran
                    backgroundImage: const NetworkImage(
                        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQkdRrgnOhDB9OBm1dgt4obEJrcq1Fd0hDDjC5uqahL0gExow-c'), // Ganti dengan URL foto profil Anda
                    backgroundColor: Colors.grey[
                        200], // Warna latar belakang jika gambar tidak ada
                  ),
                  const SizedBox(height: 16.0), // Jarak antara foto dan nama
                  const Text(
                    'Tedy Firmansyah', // Nama pengguna
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                      height: 8.0), // Jarak antara nama dan deskripsi
                  Text(
                    'Mahasiswa Informatika', // Deskripsi pengguna
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16.0), // Jarak sebelum ikon email
                  const Icon(
                    Icons.email, // Ikon email
                    size: 30, // Ukuran ikon
                    color: Colors.red, // Warna ikon
                  ),
                  const SizedBox(height: 100.0), // Jarak sebelum tombol Logout
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:
                            16.0), // Padding horizontal di sekitar tombol
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman login
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                      height: 16.0), // Jarak sebelum tombol 'Ubah password'
                  TextButton(
                    onPressed: () {
                      // Aksi untuk 'Ubah password'
                      // Misalnya, navigasi ke halaman ubah password
                    },
                    child: const Text(
                      'Ubah password', // Tulisan 'Ubah password'
                      style: TextStyle(
                          color: Colors
                              .blue), // Mengatur warna tulisan menjadi biru
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 16.0, // Jarak dari kanan
            bottom: 16.0, // Jarak dari bawah
            child: const Icon(
              Icons.help, // Ikon help
              size: 30, // Ukuran ikon
              color: Colors.black, // Warna ikon
            ),
          ),
        ],
      ),
    );
  }
}
