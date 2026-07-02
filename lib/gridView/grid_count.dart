import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.yellow,),
              Container(color: Colors.blue,),
              Container(color: Colors.orange,),
            ],
        ),
      ),
    );
  }
}
