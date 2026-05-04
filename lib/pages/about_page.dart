import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 32.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 72,
                  backgroundColor: const Color.fromARGB(255, 250, 100, 185),
                  backgroundImage: const NetworkImage(
                    'https://i.pravatar.cc/300?img=47',
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 72,
                    color: Color.fromARGB(179, 247, 164, 229),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'NPM: 20241320080',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Nama: Yunita Nur aini',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Saya Mengikuti UTS Praktikum PAB',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
