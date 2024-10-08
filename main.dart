import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weevils's profile"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ProfileSection(),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          // Pfp
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpchBVl30pFa3pomQVsWZurMDbSniRVfaA-g&s'),
          ),
          SizedBox(height: 15),

          Text(
            "Hey, I'm a Weevil",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "TheWeevil@Flutter.dev",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profileStats("335", "Follower"),
              verticalDivider(),
              profileStats("105", "Following"),
              verticalDivider(),
              profileStats("750", "Friends"),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget profileStats(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }

  // Vertical Divider Widget
  Widget verticalDivider() {
    return Container(
      height: 30,
      child: VerticalDivider(
        color: Colors.grey,
        thickness: 1,
        indent: 5,
        endIndent: 5,
      ),
    );
  }
}
