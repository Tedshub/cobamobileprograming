import 'package:flutter/material.dart';
import 'profile_page.dart'; // Pastikan ini ada jika Anda menggunakan profile_page.dart

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 17, // Ukuran font 17
            fontWeight: FontWeight.bold, // Bold
          ),
        ),
        backgroundColor: Colors
            .yellow, // Mengubah warna latar belakang AppBar menjadi kuning
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            // Membuat tampilan dapat di-scroll
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Rata atas
                crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                children: [
                  const SizedBox(
                      height: 60), // Memberikan ruang untuk ikon di atas
                  // Gambar untuk Microcontroller
                  _buildMicrocontrollerImageContainer(),
                  const SizedBox(height: 8.0),
                  _buildTextWithBorder('Microcontroller'),
                  const SizedBox(height: 5.0),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Microcontroller adalah chip yang menggabungkan prosesor, memori, dan antarmuka input/output dalam satu perangkat, umumnya digunakan dalam sistem khusus seperti kontrol perangkat atau robot sederhana. Pada robot, microcontroller seperti Arduino atau ESP32 sering dipakai untuk mengendalikan motor, membaca sensor, dan melakukan tugas-tugas otomatisasi dasar. Karena komponen utamanya sudah menyatu dalam satu chip, microcontroller lebih hemat daya, biaya rendah, dan cocok untuk tugas real-time sederhana.',
                    ),
                  ),

                  // Menambahkan space sebelum gambar microprocessor
                  const SizedBox(
                      height:
                          25.0), // Jarak tambahan antara microcontroller dan microprocessor

                  // Gambar untuk Microprocessor
                  _buildMicroprocessorImageContainer(),
                  const SizedBox(height: 8.0),
                  _buildTextWithBorder('Microprocessor'),
                  const SizedBox(height: 5.0),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Sementara itu, microprocessor adalah chip CPU yang membutuhkan komponen eksternal seperti RAM, ROM, dan perangkat input/output agar berfungsi penuh. Microprocessor lebih kuat dan fleksibel dibandingkan microcontroller, sehingga cocok untuk tugas berat seperti pengenalan gambar atau kecerdasan buatan pada robot canggih. Contoh yang populer adalah Raspberry Pi dan Jetson Nano, yang mampu menangani pemrosesan data kompleks dan cocok untuk aplikasi yang memerlukan daya komputasi tinggi dan fleksibilitas perangkat lunak.',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Membuat bentuk lingkaran
                color: Colors.yellow, // Warna latar belakang kuning
                border:
                    Border.all(color: Colors.yellow, width: 1), // Border kuning
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                  size: 35, // Ukuran ikon diatur menjadi 35
                  color: Colors.black, // Mengatur warna ikon menjadi hitam
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextWithBorder(String text) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.yellow, // Latar belakang kuning
        border: Border.all(color: Colors.yellow, width: 1), // Border kuning
        borderRadius: BorderRadius.circular(15), // Border radius 10px
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildMicrocontrollerImageContainer() {
    return Container(
      width: double.infinity, // Mengisi lebar penuh
      height: 300, // Tinggi dari container gambar diubah menjadi 300
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2), // Border hitam
        borderRadius: BorderRadius.circular(10), // Border radius 10px
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(10), // Border radius agar gambar sesuai
        child: Image.network(
          'https://cdn.shopify.com/s/files/1/0533/3997/9927/files/arduino-uno-r3-usb-microcontroller-01_540x.webp?v=1720469014', // URL gambar microcontroller
          fit: BoxFit.cover, // Mengatur cara gambar diisi
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text(
                'Gambar tidak tersedia',
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMicroprocessorImageContainer() {
    return Container(
      width: double.infinity, // Mengisi lebar penuh
      height: 300, // Tinggi dari container gambar diubah menjadi 300
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2), // Border hitam
        borderRadius: BorderRadius.circular(10), // Border radius 10px
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(10), // Border radius agar gambar sesuai
        child: Image.network(
          'https://images.ctfassets.net/oshmmv7kdjgm/4BpWyY1M5EyzGdXpsDUeXd/4548269375bf9b8c5ee9342e0a4d2190/rpi5.png?fm=webp&h=388&w=690', // URL gambar microprocessor
          fit: BoxFit.cover, // Mengatur cara gambar diisi
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text(
                'Gambar tidak tersedia',
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }
}
