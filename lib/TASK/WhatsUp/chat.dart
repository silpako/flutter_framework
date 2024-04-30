import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatList(),
  ));
}

class ChatList extends StatelessWidget {
  final List<String> name = [
    "Padmarajan",
    "Ayyappan",
    "Madhavikutty",
    "ONV Kurup",
    "Basheer",
    "Sunil P",
    "SK Pottakkad",
  ];
   final List<String> sub = [
    "Hi",
    "Hi sir",
    "Hello",
    "Hi",
    "Hi",
    "Hai",
    "Hai"
  ];
  final List<String> image = [
    "assets/whatsapp/padma.jpg",
    "assets/whatsapp/ayyapan.jpg",
    "assets/whatsapp/madavikutti.jpg",
    "assets/whatsapp/onv.jpg",
    "assets/whatsapp/basheer.jpg",
    "assets/whatsapp/sunil.jpg",
    "assets/whatsapp/sk.jpg"
  ];


  // Modify icons list to include both icon and color
  final List<Icon> icons = [
    Icon(CupertinoIcons.pin, color: Colors.grey,size: 20,),
    Icon(Icons.done_all, color: Colors.grey,size: 20,),
    Icon(Icons.done, color: Colors.grey,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
  ];

  ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(
                name[index],
                style: TextStyle(fontSize: 15),
              ),
               subtitle: Text(
                sub[index],
                style: TextStyle(fontSize: 12),
              ),
              trailing: icons[index],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Color.fromARGB(255, 8, 133, 95),
      ),
    );
  }
}
