import 'package:flutter/material.dart';
import 'package:music_gen_app/main.dart';
import 'package:music_gen_app/music.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  State<MusicScreen> createState() {
    return _MusicScreenState();
  }
}

class _MusicScreenState extends State<MusicScreen> {
  var musicimg2 = 'assets/images/music3.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generating tune...'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(musicimg2, width: 200),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Row(
                  children: const [
                    Icon(Icons.fast_rewind, size: 50, color: Colors.blue),
                    AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: kAlwaysCompleteAnimation,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Icon(Icons.fast_forward, size: 50, color: Colors.blue),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
