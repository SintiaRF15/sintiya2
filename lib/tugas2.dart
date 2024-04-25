import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  String? nama;
  final player = AudioPlayer();

  void gantinama(String inputnama) async {
    setState(() {
      nama = inputnama;
    });

    await _playAudio(inputnama);
  }

  Future<void> _playAudio(String audioPath) async {
    await player.setAsset("media/audio/$audioPath.mp3");
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => gantinama("babi"),
                      child: Image.asset(
                        'media/gambar/babi.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => gantinama("burung"),
                      child: Image.asset(
                        'media/gambar/burung.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => gantinama("gaja"),
                      child: Image.asset(
                        'media/gambar/gaja.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => gantinama("sapi"),
                      child: Image.asset(
                        'media/gambar/sapi.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => gantinama("harimau"),
                      child: Image.asset(
                        'media/gambar/harimau.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nama ?? "Klik gambar", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
