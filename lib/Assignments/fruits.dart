import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Products(),));
}
class Products extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List",textAlign:TextAlign.center, style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
      ),),
       backgroundColor: Colors.blue,
       centerTitle: true,

        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 20,),
        ], 
       
      ),

      body: ListView(
        children: [
          Container(
            height: 100,        
            child: Card(
              shadowColor: Colors.blueAccent,
              elevation: 20,
               color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
               ),
            ///.................1...........................   
              child: ListTile(
                title: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 120.0,
                    child: Image.asset("assets/images/apple.jpeg"),                  
                  ),
                  SizedBox(width: 15.0),

                Expanded(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      SizedBox(height:9.0),
                      Text("Name: Apple",
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                           ),
                      Text("Unit: Kg",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                        Text("Price: 20",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                       ],
                    ),
                  Container(        
                    width: 120.0, 
                    height: 40.0, 
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0), 
                    child: Text(
                        "ADD TO CART",textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                  ), 
      ),
    ],
  ),
),

                ],
                ),
              ),
            ), 
          ),
          //////................2......................
Container(
            height: 100,        
            child: Card(
              shadowColor: Colors.blueAccent,
              elevation: 20,
               color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0), 
               ),
               
              child: ListTile(
                title: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 120.0,
                    child: Image.asset("assets/images/mangos.jpeg"),                  
                  ),
                  SizedBox(width: 16.0),

                Expanded(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                            "Name:Mango",
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                           ),
                      SizedBox(height: 8.0),
                      Text(
                         "Unit: Kg",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                        Text(
                         "Price: 30",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                       ],
                    ),
                  Container(        
                    width: 120.0,
                    height: 40.0, 
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0), 
                    child: Text(
                        "ADD TO CART",textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                  ),
      ),
    ],
  ),
),

                ],
                ),
              ),
            ), 
          ),
          ///........3....................

          Container(
            height: 100,           
            child: Card(
              shadowColor: Colors.blueAccent,
              elevation: 20,
               color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0), 
               ),
               
              child: ListTile(
                title: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 120.0,
                    child: Image.asset("assets/images/banana.jpeg"),                  
                  ),
                  SizedBox(width: 16.0),

                Expanded(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                            "Name:Banana",
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                           ),
                      SizedBox(height: 8.0),
                      Text(
                         "Unit: Kg",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                        Text(
                         "Price: 50.00",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                       ],
                    ),
                  Container(        
                    width: 120.0, 
                    height: 40.0, 
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0), 
                    child: Text(
                        "ADD TO CART",textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                  ),
      ),
    ],
  ),
),

                ],
                ),
              ),
            ), 
          ),
//....................4....................
          Container(
            height: 100,         
            child: Card(
              shadowColor: Colors.blueAccent,
              elevation: 20,
               color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
               ),
               
              child: ListTile(
                title: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 120.0,
                    child: Image.asset("assets/images/grapes.jpeg"),                  
                  ),
                  SizedBox(width: 16.0),

                Expanded(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                            "Name:Grapes",
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                           ),
                      SizedBox(height: 8.0),
                      Text(
                         "Unit: Kg",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                         Text(
                         "Price: 80.00",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                       ],
                    ),
                  Container(        
                    width: 120.0, 
                    height: 40.0, 
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "ADD TO CART",textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                  ),
      ),
    ],
  ),
),

                ],
                ),
              ),
            ), 
          ),
         
         //,,,,,,,,,,,,,,6,,,,,,,,,,,,,,,,,
          //..............................5............
                   Container(
            height: 100,         
            child: Card(
              shadowColor: Colors.blueAccent,
              elevation: 20,
               color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
               ),
               
              child: ListTile(
                title: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 120.0,
                    child: Image.asset("assets/images/Kiwi.jpeg"),                  
                  ),
                  SizedBox(width: 16.0),

                Expanded(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                            "Name:Kiwi",
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                           ),
                      SizedBox(height: 8.0),
                      Text(
                         "Unit: Kg",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                         Text(
                         "Price: 70.00",
                         style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
                        ),
                       ],
                    ),
                  Container(        
                    width: 120.0, 
                    height: 40.0, 
                    color: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "ADD TO CART",textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                  ),),],),),],),),), ),],),);}}