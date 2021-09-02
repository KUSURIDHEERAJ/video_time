import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:video_time/screens/meetingscreen.dart';
import 'package:video_time/screens/profilescreen.dart';
import 'package:video_time/variables.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  List pageOptions = [
    MeetingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: montserratStyle(17, Colors.blue),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: montserratStyle(17, Colors.black),
        currentIndex: page,
        onTap: (idx) {
          setState(() {
            page = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              size: 32,
            ),
            title: Text("Meetings"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 32,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
      body: pageOptions[page],
    );
  }
}
