import 'package:flutter/material.dart';
import 'package:music_gen_app/start_screen.dart';
import 'package:music_gen_app/input_screen.dart';
import 'package:music_gen_app/music_screen.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() {
    return _MusicState();
  }
}

class _MusicState extends State<Music> {
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'input_screen';
    });
  }

  void switchScreen2() {
    setState(() {
      activeScreen = 'music_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'input_screen') {
      screenWidget = const InputScreen();
    }
    if (activeScreen == 'music_screen') {
      screenWidget = const MusicScreen();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome!'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 234, 193, 13),
              Color.fromARGB(255, 236, 214, 72),
            ], begin: Alignment.topLeft, end: Alignment.topRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
