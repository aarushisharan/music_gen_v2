//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music_gen_app/login_screen.dart';
//import 'package:lottie/lottie.dart';
import 'package:music_gen_app/main_drawer.dart';
import 'package:music_gen_app/models/user_model.dart';
//import 'package:music_gen_app/main.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  State<MyProfile> createState() {
    return _MyProfileState();
  }
}

class _MyProfileState extends State<MyProfile> {
  // User? user = FirebaseAuth.instance.currentUser;
  //UserModel loggedInUser = UserModel();

  /**@override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }**/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('My Profile'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/musicapp2.png',
              width: 500,
              height: 500,
            ),
          ),
          Text("Welcome Back!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          /**  Text(
            "${loggedInUser.firstname} ${loggedInUser.lastname}",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),**/
          SizedBox(height: 10),
          /**  Text(
             "${loggedInUser.email}",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),**/
          SizedBox(height: 20),
          ActionChip(
            label: Text('Logout'),
            onPressed: () {
              //logout(context);
            },
          )
        ],
      ),
    );
  }

  /**  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }**/
}
