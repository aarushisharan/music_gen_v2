import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music_gen_app/start_screen.dart';
import 'package:music_gen_app/input_screen.dart';
import 'package:music_gen_app/music_screen.dart';

ThemeData themeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 197, 138, 138),
  ),
  drawerTheme: DrawerThemeData(),
  scaffoldBackgroundColor: Color.fromARGB(255, 176, 139, 237),
);

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() {
    return _MusicState();
  }
}

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 177, 139, 237));

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
    return Container();
    //reenWidget = const MusicScreen();
  }
}
