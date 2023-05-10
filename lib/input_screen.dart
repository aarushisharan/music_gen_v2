import 'package:flutter/material.dart';
import 'package:music_gen_app/main.dart';
import 'package:music_gen_app/music.dart';
import 'package:music_gen_app/music_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  State<InputScreen> createState() {
    return _InputScreenState();
  }
}

class _InputScreenState extends State<InputScreen> {
  var enteredchar = '';
  var numval = 0;

  void _saveAlphabetInput(String inputValue) {
    enteredchar = inputValue;
  }

  void _saveNumericInput(int value) {
    numval = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input to generate a new tune!'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  maxLength: 1,
                  onChanged: _saveAlphabetInput,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text('Enter a value between a and z'),
                  ),
                ),
                TextField(
                  maxLength: 5,
                  onChanged: _saveAlphabetInput,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Enter a value between 0 to 9999'),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const MusicScreen();
                      }),
                    );
                  },
                  child: const Text(
                    'Generate Music',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
