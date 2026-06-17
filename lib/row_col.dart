import 'package:flutter/material.dart';

class RowColDemo extends StatelessWidget {
  const RowColDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Col"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text("Name"),
            Text("Age"),
            Text("City"),
            Text("Contact"),
          ],
        ),
      ),
    );
  }
}
