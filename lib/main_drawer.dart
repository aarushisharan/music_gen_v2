import 'package:flutter/material.dart';
import 'package:music_gen_app/input_screen.dart';
import 'package:music_gen_app/login_screen.dart';
import 'package:music_gen_app/start_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 176, 139, 237),
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 176, 139, 237), Colors.black],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: AssetImage('assets/images/Music_app_1.jpg'),
            ),
            accountName: const Text(
              'Test 1',
              style: TextStyle(fontSize: 20.0),
            ),
            accountEmail: Text('test1@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              'My Profile',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'HomePage',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration_rounded),
            title: Text(
              'Login Page',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text(
              'Input Screen ',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text(
              'My Music',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
