import 'package:flutter/material.dart';
import 'package:sintiya/list.dart';
// import 'package:tugas/tugas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SINTIYA RAHAYU',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda SAMP'),
        backgroundColor: Colors.green,
      ),
      body: Text('Hello world'),
    );
  }
}
