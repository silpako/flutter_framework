import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:ListView2(),));
}
// ignore: must_be_immutable
class ListView2 extends StatelessWidget{
  var name=["Sreejith",
            "Sree",
            "Siva",
            "Sijin",
            "Sreedev",];
  var image=["assets/images/man.png",
              "assets/images/man.png",
              "assets/images/man.png",
              "assets/images/man.png",
              "assets/images/man.png"];
  var icons=[Icons.done_all,
             Icons.done_all,
             Icons.done_all,
             Icons.done_all,
             Icons.done_all];

  ListView2({super.key});
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Listgenerate"),),
      body: ListView(
        children: List.generate(name.length,(index) => Card(child:ListTile(leading: Image.asset(image[index]),
        title: Text(name[index]),
        subtitle: Icon(icons[index]),
        trailing: CircleAvatar(backgroundColor: Colors.blue,radius: 10,),
        ),
        ),
        )
        ),
        //Text(name[index])
        // Image.asset("assets/images/man.png",height: 50,width: 50,),
      );
  }

}