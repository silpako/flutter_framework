import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: ListviewLoc(),));
}
class ListviewLoc extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cities Around World ",
      textAlign: TextAlign.center),
      backgroundColor: Colors.red,
      centerTitle: true,      ),

    body:ListView(
        children: [
          Container(
            height: 150,
            child: Card(
              shadowColor: Colors.yellowAccent,
              elevation: 10,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), 
               ),
              child: ListTile(  
                title: Row(
            children: [
              Container(
                height: 150.0,
                width: 150.0,
                child: Image.asset("assets/images/india.jpeg"),
              ),
              SizedBox(width: 16.0),          

               Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delhi",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0,),
                    Text("India",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 6.0),
                    Text(
                      "Population : 32.9 million ",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ), 
      ),
    ),
          Container(
            height: 150,
            child: Card(
              shadowColor: Colors.yellowAccent,
              elevation: 10,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
               ),
              child: ListTile(   
                title: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/images/finland.jpeg"),
                    ),
                    SizedBox(width: 16.0,),

                     Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Finland",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0,),
                    Text("Europe",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 6.0),
                    Text("Population : 5.54 million",                    
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
                  ],
                ),
                ),
            ),
          ),

            Container(
            height: 150,
            child: Card(
              shadowColor: Colors.yellowAccent,
              elevation: 10,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), 
               ),
              child: ListTile(
                 title: Row(
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      child: Image.asset("assets/images/london.jpg"),
                    ),
                    SizedBox(width: 16.0,),

                     Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("London",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6.0,),
                    Text("UK",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 8.0),
                    Text("Population : 8.8 million",style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
                  ],
                ),
                   
                ),
            ),
          ),

            Container(
            height: 150,
            child: Card(
              shadowColor: Colors.yellowAccent,
              elevation: 10,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), 
               ),
              child: ListTile( 
                title: Row(
            children: [
              Container(
                height: 120.0,
                width: 150.0,
                child: Image.asset("assets/images/Vancouver.jpg"),
              ),
              SizedBox(width: 16.0),        

               Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "vancouver",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0,),
                    Text("Canada",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 6.0),
                    Text("Population : 2,6 million",style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
            ],
          ),  
                ),
            ),
          ),
        ],      
    ),
    );
  }
}