import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        backgroundColor: CupertinoColors.activeGreen,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white60,
            child: ListTile(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              selected: selectedIndex == index,
              selectedColor: Colors.black,
              selectedTileColor: Colors.green,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/arsenal.png"),
              ),
              title: Text("Tahir $selectedIndex"),
              subtitle: Text("Hello, How are You? $index"),
              trailing: Text("6/24/2026"),
            ),
          );
        },
      ),
    );
  }
}
