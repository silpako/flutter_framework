import 'package:flutter/material.dart';
import 'dummy.dart';

class All_shoes extends StatelessWidget{
  const All_shoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:SingleChildScrollView(
  child: Column(
  children: [
    SizedBox(
      height: 700,
      width: 500,
      child: GridView.count(crossAxisCount: 2,

          crossAxisSpacing: 10,mainAxisSpacing: 10,
          children:
          productsEcmrce.map((product) => InkWell(
            onTap: (){
              Navigator.pushNamed(context, "detailpage",arguments: product['id']);
            },
            child: Card(
              child: Column(

                children: [
                  Expanded(
                      child:Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)
                        ),
                            image:DecorationImage(image:NetworkImage((product['image']),),fit: BoxFit.cover)
                        ),

                      )
                  ),

                  Text(
                    product['name'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                  ),
                  Text(
                    product['subtitle'].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),
                  ),

                  Text(
                    product['price'].toString(),style: TextStyle(fontSize: 15),
                  ),
                  // MaterialButton(onPressed: (){},
                  //   color: Color(0xFF795548) ,
                  //   height: 20,
                  //   minWidth: 100,
                  //   shape: StadiumBorder(),
                  // child: Text("Add to Cart",style: TextStyle(color: Colors.white),),)

                ],
              ),
            ),
          )).toList()
      ),
    )
  ],
  ),
) ,
    );
  }
}
