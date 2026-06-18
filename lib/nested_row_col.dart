import 'package:flutter/material.dart';

class NestedRowCol extends StatelessWidget {
  const NestedRowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Post"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 2
                      )
                    ),
                    child: Icon(Icons.person)),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Abdullah"),
                    Text("Islamabadd")
                  ],
                ),
                SizedBox(width: 150,),
                IconButton(onPressed: (){}, icon: Icon(Icons.menu))
              ],
            ),
            SizedBox(height: 20,),
            Text("psum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised tha"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.comment),
                Icon(Icons.share),
                Icon(Icons.bookmark),
              ],
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                  , child: Text("Click Me")),
            )
          ],
        ),
      ),
    );
  }
}
