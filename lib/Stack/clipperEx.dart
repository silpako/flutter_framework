import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home:ClipperEx(),));
}

class ClipperEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clippers"),),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: 1.2,
              heightFactor: 1.2,
              child: Image.network(
                "https://images.unsplash.com/photo-1470509037663-253afd7f0f51?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D"),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network
            ("https://images.unsplash.com/photo-1606041008023-472dfb5e530f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Zmxvd2VyfGVufDB8fDB8fHww"),
          ),
          ),
          ClipOval(child: Image.network
          ("https://plus.unsplash.com/premium_photo-1674595205685-0f6dec44acd6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zmxvd2VyfGVufDB8fDB8fHww"),
          ),
          ClipPath(
            clipper: MessageClipper(),
            child:Container
            (color: Colors.pink,height: 200,),),
          ClipPath(clipper: MovieTicketClipper(),
          child: Container(color: Colors.black,height: 200,),),
          ClipPath(clipper: MovieTicketBothSidesClipper(),
          child: Container(color: Colors.red,height: 200,),),
          ClipPath(clipper: StarClipper(8),
          child: Container(color: Colors.purple,height: 700,),),
          ClipPath(clipper: HexagonalClipper(),
          child: Image.network("https://images.unsplash.com/photo-1703136686959-d6e53e9fab46?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDd8fHxlbnwwfHx8fHw%3D"))
        ],
      ),
    );
  }
  
  
}