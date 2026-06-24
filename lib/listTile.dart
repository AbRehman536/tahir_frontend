import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: CupertinoColors.activeGreen,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white60,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/image/arsenal.png"),
              ),
              title: Text("Tahir"),
              subtitle: Text("Hello, How are You?"),
              trailing: Text("6/24/2026"),
            ),
          );
        },
      ),
    );
  }
}
