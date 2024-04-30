import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GroupList(),
  ));
}

class GroupList extends StatelessWidget {
  final List<String> name = [
    "Books",
    "PSC Coaching",
    "Jobs",
    "Mohanla Fan Club",
    "College Life",
    "Flutter",
    "Padmarajan Fans"
  ];
  final List<String> sub = [
    "Books for you",
    "Job offers",
    "Photo",
    "Hi",
    "Hi",
    "Flutter Notes",
    "Hai"
  ];
  final List<String> image = [
    "assets/whatsapp/books.jpg",
    "assets/whatsapp/psc.jpg",
    "assets/whatsapp/jobs.png",
    "assets/whatsapp/mh.jpg",
    "assets/whatsapp/clg.jpg",
    "assets/whatsapp/flur.png",
    "assets/whatsapp/padma.jpg"
   
  ];

  final List<Icon> icons = [
    Icon(CupertinoIcons.pin, color: Colors.grey,size: 20,),
    Icon(Icons.done_all, color: Colors.grey,size: 20,),
    Icon(Icons.done, color: Colors.grey,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
    Icon(Icons.done_all, color: Colors.blue,size: 20,),
  ];

  GroupList({Key? key}) : super(key: key);

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
