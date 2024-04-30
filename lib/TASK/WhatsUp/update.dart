import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Updatelist(),
  ));
}

class Updatelist extends StatelessWidget {
  final List<String> name = [
    "My Status",
  ];
  final List<String> image = [
    "assets/whatsapp/padma.jpg"
  ];

  Updatelist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Status",style: TextStyle(fontSize: 15,color: Colors.black),),
        actions: [
        Icon(CupertinoIcons.ellipsis_vertical,color: Colors.black,)
        ],
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index],style: TextStyle(fontSize:15 ),),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {

      },
      child:Icon(Icons.camera_alt),
      backgroundColor: Color.fromARGB(255, 8, 133, 95),),
    );
  }
}
