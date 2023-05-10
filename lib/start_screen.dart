import 'package:flutter/material.dart';
//import 'package:music_gen_app/main.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startMusic, {super.key});

  final void Function() startMusic;

  var musicimg = 'assets/images/musicapp2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome! Get ready to explore the world of music!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(musicimg, width: 200),
            const SizedBox(height: 80),
            const Text(
              'Explore Music The Fun Way!',
              style: TextStyle(
                color: Color.fromARGB(255, 47, 14, 183),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                startMusic();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 47, 14, 183),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Music'),
            )
          ],
        ),
      ),
    );
  }
}
