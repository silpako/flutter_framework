
import 'package:flutter/material.dart';

import 'dummy.dart';
void main(){
  runApp(MaterialApp(home: DetailsPageEcmrce(),));
}
class DetailsPageEcmrce extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //to read value from previous page
    final productId=ModalRoute.of(context)?.settings.arguments;
    ///fetch that single map corresponding to the above id
    final product= productsEcmrce.firstWhere((element) => element['id']==productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product details ',style: TextStyle(color: Colors.yellow,fontSize: 23,fontWeight: FontWeight.bold),),
        backgroundColor:  Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                  image:DecorationImage(fit: BoxFit.cover,
                      image:NetworkImage((product["image"])))
              ),
            ),
          ),
          Text(
            product['name'],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

          ),
          Text(
            product['price'].toString(),style: TextStyle(fontSize: 22),
          ),
          Text(
            product['description'],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

          ),




        ],
      ),
    );
  }
}