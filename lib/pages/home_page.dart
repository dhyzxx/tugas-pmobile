import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulasi data tugas semester 3
    final List<Map<String, String>> listTugas = [
      {"judul": "Tugas Struktur Data", "matkul": "Struktur Data", "deadline": "25 April"},
      {"judul": "Proyek Web Laravel", "matkul": "Web Programming", "deadline": "2 Mei"},
      {"judul": "Kuis Logika", "matkul": "Matematika Diskrit", "deadline": "Besok"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Tugas"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listTugas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.assignment, color: Colors.blue),
              title: Text(listTugas[index]['judul']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(listTugas[index]['matkul']!),
              trailing: Text(
                listTugas[index]['deadline']!,
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}