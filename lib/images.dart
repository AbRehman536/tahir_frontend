import 'package:flutter/material.dart';
class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
            width: 300,height: 200,),
            Image.asset("assets/images/arsenal.png",width: 300,height: 300,),
            Container(
              color: Colors.yellow,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s",
              width: 500,height: 400,
              fit: BoxFit.fitWidth,
              ),
            ),
            ClipRRect(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s"),
              borderRadius: BorderRadius.circular(100),
            ),
            ClipOval(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s"),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s"),
              radius: 50,
            )
          ],
        ),
      ),
    );
  }
}
