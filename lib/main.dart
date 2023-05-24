//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_gen_app/music.dart';
import 'package:music_gen_app/input_screen.dart';
import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 143, 111, 220));

/**Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Music());
}**/
void main() {
  runApp(const Music());
}
