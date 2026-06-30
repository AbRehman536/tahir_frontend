import 'package:flutter/material.dart';
import 'package:tahir_frontend/textField.dart';

class MenusScreen extends StatelessWidget {
  const MenusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: ListTile(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=> Login()));
                      },
                      leading: Icon(Icons.tab),
                      title: Text("New Tab"),
                      trailing: Text("Ctrl N"),
                    )),
                PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.window),
                      title: Text("New Window"),
                      trailing: Text("Ctrl W"),
                    )),
                PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Text("Ctrl S"),
                    )),
                PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.bookmark),
                      title: Text("Bookmark"),
                      trailing: Text("Ctrl B"),
                    )),
                PopupMenuItem(
                    child: ListTile(
                      onTap: (){
                        Navigator.pop(context);
                        },
                      leading: Icon(Icons.delete),
                      title: Text("Delete"),
                      trailing: Text("Ctrl D"),
                    )),
              ];
            },)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100,
              color: Colors.yellow,
              child: DrawerHeader(child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/car1.png"),
                  ),
                  Text("Abdullah")
                ],
              )),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios_outlined)
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.chat_sharp),
              title: Text("Chats"),
              trailing: Icon(Icons.arrow_forward_ios_outlined)
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios_outlined)
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios_outlined)
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Tap on 3 dots to open Popup menu"),
            ElevatedButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Thank You!"),
                      content: Text("Send Successfully"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Back")),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                        }, child: Text("Next")),
                      ],
                    );
                },);
            }, child: Text("Click to Open dialog box")),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                isDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return Column(
                      children: [
                        Text("Profile"),
                        ListTile(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            leading: Icon(Icons.home),
                            title: Text("Home"),
                            trailing: Icon(Icons.arrow_forward_ios_outlined)
                        ),
                        ListTile(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            leading: Icon(Icons.chat_sharp),
                            title: Text("Chats"),
                            trailing: Icon(Icons.arrow_forward_ios_outlined)
                        ),
                        ListTile(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            leading: Icon(Icons.person),
                            title: Text("Profile"),
                            trailing: Icon(Icons.arrow_forward_ios_outlined)
                        ),
                        ListTile(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            leading: Icon(Icons.logout),
                            title: Text("Logout"),
                            trailing: Icon(Icons.arrow_forward_ios_outlined)
                        ),
                      ],
                    );
                },);
            }, child: Text("Show Bottom Sheet"))
          ],
        ),
      ),
    );
  }
}
