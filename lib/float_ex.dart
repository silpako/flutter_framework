import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: FloatEx(),));
}

class FloatEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.dialpad),
        onPressed: (){
          showDialog(context: context, 
          builder: (context)=>AlertDialog(title: Text("Reset Setting"),
          content: Text("Reset your contact settings"),
          actions: [
            IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar
              (SnackBar(content: Text(" Cancelled"),));
              Navigator.pop(context);
              }, 
              icon: Icon(Icons.minimize)),
             IconButton(onPressed: (){
               ScaffoldMessenger.of(context).showSnackBar
              (SnackBar(content: Text("Successfully Reset "),));
              Navigator.pop(context);
              }, icon: Icon(Icons.add))
            ],
            backgroundColor: Colors.grey,
            ));
        }),
    );
  }

}