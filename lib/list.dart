import 'package:flutter/material.dart';
import 'package:sintiya/tugas2.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TUGAS'),
        backgroundColor: Color.fromARGB(255, 6, 148, 225),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Tugas(),
                    ),

                    // Akhir
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 250, 44, 44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  'Tugas 2',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                )),
          )
        ],
      ),
    );
  }
}
