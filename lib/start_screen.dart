import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music_gen_app/main_drawer.dart';
//import 'package:music_gen_app/main.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  //final void Function() startMusic;

  var musicimg = 'assets/images/musicapp2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Lottie.asset(
              'assets/images/Homescreen-ani.json',
              width: 500,
              height: 500,
            ),
          ),
          Text("Welcome!"),
          // "This music generation app helps amateurs as well as professional musicians to discover new tunes!"
          //"Interesting app to help you create your own music. "),
        ],
      ),
    );
  }
}
