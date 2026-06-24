import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultipleSelection extends StatefulWidget {
  const MultipleSelection({super.key});

  @override
  State<MultipleSelection> createState() => _MultipleSelectionState();
}

class _MultipleSelectionState extends State<MultipleSelection> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
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
                  if(selectedIndex.contains(index)){
                    selectedIndex.remove(index);
                  }else{
                    selectedIndex.add(index);
                  }
                });

              },
              tileColor: selectedIndex.contains(index) ? Colors.green : Colors.white60,
              textColor: selectedIndex.contains(index) ? Colors.black : Colors.black,
              iconColor: selectedIndex.contains(index) ? Colors.black : Colors.black,
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
