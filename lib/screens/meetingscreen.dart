import 'package:flutter/material.dart';
import 'package:video_time/variables.dart';
import 'superman';

class MeetingScreen extends StatefulWidget {
  // const MeetingScreen({ Key? key }) : super(key: key);

  @override
  _MeetingScreenState createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
    with SingleTickerProviderStateMixin {
  TabController tabController;
  tabBuilder(String name) {
    return Container(
      width: 150,
      height: 50,
      child: Card(
        child: Center(
          child: Text(
            name,
            style: ralewayStyle(
              15,
              Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zoom Clone",
          style: ralewayStyle(20, Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            tabBuilder("Join Meeting"),
            tabBuilder("Create Meeting"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          JoinMeetingScreen(),
          CreateMeetingScreen(),
        ],
      ),
    );
  }
}
}