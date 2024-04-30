import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CallList(),
  ));
}

class CallList extends StatelessWidget {
  final List<String> name = [
    "Padmarajan",
    "Ayyappan",
    "Madhavikutty",
    "ONV Kurup",
    "Basheer",
    "Sunil P",
    "SK Pottakkad",
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
    Icon(CupertinoIcons.phone_fill_arrow_down_left, color: Colors.red, size: 20,),
    Icon(CupertinoIcons.phone_fill_arrow_down_left, color: Colors.red, size: 20,),
    Icon(CupertinoIcons.phone_fill_arrow_up_right, color: Colors.green, size: 20,),
    Icon(CupertinoIcons.phone_fill_arrow_up_right, color: Colors.green, size: 20,),
    Icon(CupertinoIcons.videocam_fill, color: Colors.red, size: 20,),
    Icon(CupertinoIcons.videocam_fill, color: Colors.red, size: 20,),
    Icon(CupertinoIcons.videocam_fill, color: Colors.green, size: 20,),
  ];

  final List<String> timeAndDate = [
    "Today, 11:00 PM",
    "Yesterday, 12:00 AM",
    "18 Feb 2024, 10:30 AM ",
    "20 Feb 2024, 11:00 AM",
    "19 Feb 2024",
    "20 Feb 2024",
    "20 Feb 2024",
  ];

  CallList({Key? key}) : super(key: key);

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
                timeAndDate[index],
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              trailing: icons[index],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
        backgroundColor:Color.fromARGB(255, 8, 133, 95),
      ),
    );
  }
}
