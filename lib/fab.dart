import 'package:flutter/material.dart';
class FabDemo extends StatelessWidget {
  const FabDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAB"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
         foregroundColor: Colors.white,
         onPressed: (){},
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),

    );
  }
}
