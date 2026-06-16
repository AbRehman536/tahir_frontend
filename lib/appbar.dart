import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 30,),
        title: Text("Flutter Demo",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.purple,
          letterSpacing: 5.5,
          wordSpacing: 10,
          decoration: TextDecoration.underline,
          height: 5
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add,color: Colors.green,size: 35),
          Icon(Icons.settings,color: Colors.yellow,size: 20),
          Icon(Icons.person,color: Colors.orange,size: 30),
        ],
      ),
    );
  }
}
